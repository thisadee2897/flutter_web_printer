import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_good_receive_credit_widget.dart';
import '../apis/document_good_receive_credit_dt.dart';
import 'document_good_receive_credit.dart';

class DocumentGoodReceiveCreditDTNotifier extends StateNotifier<AsyncValue<List<DocumentReceiveGoodDTModel>>> {
  DocumentGoodReceiveCreditDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentReceiveGoodDTModel> response = await ref.read(apiDocumentGoodReceiveCreditDT).get(
        {"receive_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentReceiveGoodModel? hd = ref.read(documentGoodReceiveCreditProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentReceiveGoodDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorGoodReceiveCredit().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorGoodReceiveCredit().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfGoodReceiveCreditProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfGoodReceiveCreditViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfGoodReceiveCreditFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfGoodReceiveCreditViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfGoodReceiveCreditViewProvider.notifier).state = null;
    }
  }
}

final documentGoodReceiveCreditDTProvider =
    StateNotifierProvider<DocumentGoodReceiveCreditDTNotifier, AsyncValue<List<DocumentReceiveGoodDTModel>>>((ref) => DocumentGoodReceiveCreditDTNotifier(ref));

final filePdfGoodReceiveCreditProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfGoodReceiveCreditViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfGoodReceiveCreditFileProvider = StateProvider<File?>((ref) => null);
