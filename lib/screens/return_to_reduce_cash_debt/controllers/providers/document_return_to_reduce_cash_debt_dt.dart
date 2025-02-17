import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_return_to_reduce_cash_debt_widget.dart';
import '../apis/document_return_to_reduce_cash_debt_dt.dart';
import 'document_return_to_reduce_cash_debt.dart';

class DocumentReturnToReduceCashDebtDTNotifier extends StateNotifier<AsyncValue<List<DocumentCreditNoteDTModel>>> {
  DocumentReturnToReduceCashDebtDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentCreditNoteDTModel> response = await ref.read(apiDocumentReturnToReduceCashDebtDT).get(
        {"creditnote_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentCreditNoteModel? hd = ref.read(documentReturnToReduceCashDebtProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentCreditNoteDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorReturnToReduceCashDebt().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorReturnToReduceCashDebt().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfReturnToReduceCashDebtProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReturnToReduceCashDebtViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReturnToReduceCashDebtFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfReturnToReduceCashDebtViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfReturnToReduceCashDebtViewProvider.notifier).state = null;
    }
  }
}

final documentReturnToReduceCashDebtDTProvider =
    StateNotifierProvider<DocumentReturnToReduceCashDebtDTNotifier, AsyncValue<List<DocumentCreditNoteDTModel>>>((ref) => DocumentReturnToReduceCashDebtDTNotifier(ref));

final filePdfReturnToReduceCashDebtProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReturnToReduceCashDebtViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReturnToReduceCashDebtFileProvider = StateProvider<File?>((ref) => null);
