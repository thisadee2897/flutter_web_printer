import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_return_to_reduce_credit_debt_widget.dart';
import '../apis/document_return_to_reduce_credit_debt_dt.dart';
import 'document_return_to_reduce_credit_debt.dart';

class DocumentReturnToReduceCreditDebtDTNotifier extends StateNotifier<AsyncValue<List<DocumentCreditNoteDTModel>>> {
  DocumentReturnToReduceCreditDebtDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentCreditNoteDTModel> response = await ref.read(apiDocumentReturnToReduceCreditDebtDT).get(
        {"creditnote_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentCreditNoteModel? hd = ref.read(documentReturnToReduceCreditDebtProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentCreditNoteDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorReturnToReduceCreditDebt().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorReturnToReduceCreditDebt().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfReturnToReduceCreditDebtProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReturnToReduceCreditDebtViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReturnToReduceCreditDebtFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfReturnToReduceCreditDebtViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfReturnToReduceCreditDebtViewProvider.notifier).state = null;
    }
  }
}

final documentReturnToReduceCreditDebtDTProvider = StateNotifierProvider<DocumentReturnToReduceCreditDebtDTNotifier, AsyncValue<List<DocumentCreditNoteDTModel>>>(
    (ref) => DocumentReturnToReduceCreditDebtDTNotifier(ref));

final filePdfReturnToReduceCreditDebtProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReturnToReduceCreditDebtViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReturnToReduceCreditDebtFileProvider = StateProvider<File?>((ref) => null);
