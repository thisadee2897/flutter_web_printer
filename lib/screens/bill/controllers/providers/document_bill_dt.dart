import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_bill_widget.dart';
import '../apis/document_bill_dt.dart';
import 'document_bill_cash.dart';

class DocumentBillDTNotifier extends StateNotifier<AsyncValue<List<DocumentBillDTModel>>> {
  DocumentBillDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentBillDTModel> response = await ref.read(apiDocumentBillDT).get(
        {"bill_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentBillModel? hd = ref.read(documentBillProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentBillDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 15 == 0) {
          var page = await PDFGeneratorBill().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorBill().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfBillProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfBillViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfBillFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfBillViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfBillViewProvider.notifier).state = null;
    }
  }
}

final documentBillDTProvider =
    StateNotifierProvider<DocumentBillDTNotifier, AsyncValue<List<DocumentBillDTModel>>>((ref) => DocumentBillDTNotifier(ref));

final filePdfBillProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfBillViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfBillFileProvider = StateProvider<File?>((ref) => null);
