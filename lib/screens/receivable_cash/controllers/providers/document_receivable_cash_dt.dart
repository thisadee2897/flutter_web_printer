import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_receivable_cash_d_t_model.dart';
import 'package:flutter_web_printer/models/document_receivable_cash_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_receivable_cash_widget.dart';
import '../apis/document_receivable_cash_dt.dart';
import 'document_receivable_cash.dart';

class DocumentReceivableCashDTNotifier extends StateNotifier<AsyncValue<List<DocumentReceivableCashDTModel>>> {
  DocumentReceivableCashDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentReceivableCashDTModel> response = await ref.read(apiDocumentReceivableCashDT).get(
        {"receivable_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentReceivableCashModel? hd = ref.read(documentReceivableCashProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentReceivableCashDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorReceivableCash().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorReceivableCash().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfReceivableCashProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReceivableCashViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReceivableCashFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfReceivableCashViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfReceivableCashViewProvider.notifier).state = null;
    }
  }
}

final documentReceivableCashDTProvider =
    StateNotifierProvider<DocumentReceivableCashDTNotifier, AsyncValue<List<DocumentReceivableCashDTModel>>>((ref) => DocumentReceivableCashDTNotifier(ref));

final filePdfReceivableCashProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReceivableCashViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReceivableCashFileProvider = StateProvider<File?>((ref) => null);
