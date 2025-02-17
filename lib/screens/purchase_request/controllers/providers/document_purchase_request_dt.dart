import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';

import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_purchase_request_widget.dart';
import '../apis/document_purchase_request_dt.dart';
import 'document_purchase_request.dart';

class DocumentPurchaseRequestDTNotifier extends StateNotifier<AsyncValue<List<DocumentPurchaseRequestDTModel>>> {
  DocumentPurchaseRequestDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentPurchaseRequestDTModel> response = await ref.read(apiDocumentPurchaseRequestDT).get(
        {"purchaserequest_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentPurchaseRequestModel? hd = ref.read(documentPurchaseRequestProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentPurchaseRequestDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorPurchaseRequest().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorPurchaseRequest().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfPurchaseRequestProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfPurchaseRequestViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfPurchaseRequestFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfPurchaseRequestViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfPurchaseRequestViewProvider.notifier).state = null;
    }
  }
}

final documentPurchaseRequestDTProvider = StateNotifierProvider<DocumentPurchaseRequestDTNotifier, AsyncValue<List<DocumentPurchaseRequestDTModel>>>((ref) => DocumentPurchaseRequestDTNotifier(ref));

final filePdfPurchaseRequestProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfPurchaseRequestViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfPurchaseRequestFileProvider = StateProvider<File?>((ref) => null);
