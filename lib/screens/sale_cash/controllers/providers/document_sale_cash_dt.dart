import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:flutter_web_printer/screens/sale_cash/controllers/apis/document_sale_cash_dt.dart';
import 'package:flutter_web_printer/screens/sale_cash/controllers/providers/document_sale_cash.dart';
import 'package:flutter_web_printer/screens/sale_cash/views/widgets/pdf_for_sale_cash_widget.dart';
import 'package:pdf/widgets.dart' as pw;

class DocumentSaleCashDTNotifier extends StateNotifier<AsyncValue<List<DocumentSaleDTModel>>> {
  DocumentSaleCashDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentSaleDTModel> response = await ref.read(apiDocumentSaleCashDT).get(
        {"sale_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentSaleModel? hd = ref.read(documentSaleCashProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentSaleDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorSaleCash().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorSaleCash().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfSaleCashProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfSaleCashViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfSaleCashFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfSaleCashViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfSaleCashViewProvider.notifier).state = null;
    }
  }
}

final documentSaleCashDTProvider =
    StateNotifierProvider<DocumentSaleCashDTNotifier, AsyncValue<List<DocumentSaleDTModel>>>((ref) => DocumentSaleCashDTNotifier(ref));

final filePdfSaleCashProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfSaleCashViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfSaleCashFileProvider = StateProvider<File?>((ref) => null);
