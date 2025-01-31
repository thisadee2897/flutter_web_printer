import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_product_return_d_t_model.dart';
import 'package:flutter_web_printer/models/document_product_return_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_return_product_credit_widget.dart';
import '../apis/document_return_product_credit_dt.dart';
import 'document_return_product_credit.dart';

class DocumentReturnProductCreditDTNotifier extends StateNotifier<AsyncValue<List<DocumentProductReturnDTModel>>> {
  DocumentReturnProductCreditDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentProductReturnDTModel> response = await ref.read(apiDocumentReturnProductCreditDT).get(
        {"returnproduct_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentProductReturnModel? hd = ref.read(documentReturnProductCreditProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentProductReturnDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorReturnProductCredit().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorReturnProductCredit().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfReturnProductCreditProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReturnProductCreditViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReturnProductCreditFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfReturnProductCreditViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfReturnProductCreditViewProvider.notifier).state = null;
    }
  }
}

final documentReturnProductCreditDTProvider = StateNotifierProvider<DocumentReturnProductCreditDTNotifier, AsyncValue<List<DocumentProductReturnDTModel>>>(
    (ref) => DocumentReturnProductCreditDTNotifier(ref));

final filePdfReturnProductCreditProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReturnProductCreditViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReturnProductCreditFileProvider = StateProvider<File?>((ref) => null);
