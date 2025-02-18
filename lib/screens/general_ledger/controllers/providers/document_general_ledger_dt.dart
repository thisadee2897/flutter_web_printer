import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_general_ledger_widget.dart';
import '../apis/document_general_ledger_dt.dart';
import 'document_general_ledger.dart';

class DocumentGeneralLedgerDTNotifier extends StateNotifier<AsyncValue<List<DocumentGeneralLedgerDTModel>>> {
  DocumentGeneralLedgerDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentGeneralLedgerDTModel> response = await ref.read(apiDocumentGeneralLedgerDT).get(
        {"glhdid": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentGeneralLedgerModel? hd = ref.read(documentGeneralLedgerProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentGeneralLedgerDTModel> dataWidget = [];
      //sum debit and credit
      ref.read(sumDebitTotalProvider.notifier).state = state.value!.map((e) => num.parse(e.debitamnt ?? '0')).reduce((value, element) => value + element);
      ref.read(sumCreditTotalProvider.notifier).state = state.value!.map((e) => num.parse(e.creditamnt ?? '0')).reduce((value, element) => value + element);
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 15 == 0) {
          var page = await PDFGeneratorGeneralLedger().generate(
            hd: hd!,
            dt: dataWidget,
            company: company,
            sumDebit: ref.read(sumDebitTotalProvider),
            sumCredit: ref.read(sumCreditTotalProvider),
          );
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorGeneralLedger().generate(
              hd: hd!,
              dt: dataWidget,
              company: company,
              sumDebit: ref.read(sumDebitTotalProvider),
              sumCredit: ref.read(sumCreditTotalProvider),
            );
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfGeneralLedgerProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfGeneralLedgerViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfGeneralLedgerFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfGeneralLedgerViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfGeneralLedgerViewProvider : $e');
        ref.read(filePdfGeneralLedgerViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfGeneralLedgerViewProvider.notifier).state = null;
    }
  }
}

final documentGeneralLedgerDTProvider =
    StateNotifierProvider<DocumentGeneralLedgerDTNotifier, AsyncValue<List<DocumentGeneralLedgerDTModel>>>((ref) => DocumentGeneralLedgerDTNotifier(ref));

final filePdfGeneralLedgerProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfGeneralLedgerViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfGeneralLedgerFileProvider = StateProvider<File?>((ref) => null);
final sumDebitTotalProvider = StateProvider<num>((ref) => 0.0);
final sumCreditTotalProvider = StateProvider<num>((ref) => 0.0);
