import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:flutter_web_printer/screens/sale_credit/controllers/apis/document_sale_credit_dt.dart';
import 'package:flutter_web_printer/screens/sale_credit/controllers/providers/document_sale_credit.dart';
import 'package:flutter_web_printer/screens/sale_credit/views/widgets/pdf_for_sale_credit_widget.dart';
import 'package:pdf/widgets.dart' as pw;

class DocumentSaleCreditDTNotifier extends StateNotifier<AsyncValue<List<DocumentSaleDTModel>>> {
  DocumentSaleCreditDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentSaleDTModel> response = await ref.read(apiDocumentSaleCreditDT).get(
        {"sale_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentSaleModel? hd = ref.read(documentSaleCreditProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentSaleDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % (hd!.khodpunFooter == true ? 15 : 15) == 0) {
          var page = await PDFGeneratorSaleCredit().generate(hd: hd, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorSaleCredit().generate(hd: hd, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfSaleCreditProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfSaleCreditViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfSaleCreditFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfSaleCreditViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfSaleCreditViewProvider.notifier).state = null;
    }
  }
}

final documentSaleCreditDTProvider =
    StateNotifierProvider<DocumentSaleCreditDTNotifier, AsyncValue<List<DocumentSaleDTModel>>>((ref) => DocumentSaleCreditDTNotifier(ref));

final filePdfSaleCreditProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfSaleCreditViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfSaleCreditFileProvider = StateProvider<File?>((ref) => null);
