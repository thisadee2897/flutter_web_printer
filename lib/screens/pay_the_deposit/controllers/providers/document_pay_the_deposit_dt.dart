import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_pay_the_deposit_widget.dart';
import 'document_pay_the_deposit_cash.dart';

class DocumentPayTheDepositDTNotifier extends StateNotifier<AsyncValue<List<DocumentPayTheDipositModel>>> {
  DocumentPayTheDepositDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentPayTheDipositModel> response = [];
      DocumentPayTheDipositModel? data = ref.read(documentPayTheDepositProvider).value;
      if (data != null) {
        response.add(data);
      }
      return response;
    });
    if (state.hasValue) {
      DocumentPayTheDipositModel? hd = ref.read(documentPayTheDepositProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentPayTheDipositModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorPayTheDeposit().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorPayTheDeposit().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfPayTheDepositProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfPayTheDepositViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfPayTheDepositFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfPayTheDepositViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfPayTheDepositViewProvider.notifier).state = null;
    }
  }
}

final documentPayTheDepositDTProvider =
    StateNotifierProvider<DocumentPayTheDepositDTNotifier, AsyncValue<List<DocumentPayTheDipositModel>>>((ref) => DocumentPayTheDepositDTNotifier(ref));

final filePdfPayTheDepositProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfPayTheDepositViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfPayTheDepositFileProvider = StateProvider<File?>((ref) => null);
