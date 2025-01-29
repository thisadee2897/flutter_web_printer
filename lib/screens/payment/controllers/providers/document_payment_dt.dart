import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_payment_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/apis/document_payment_dt.dart';
import 'package:flutter_web_printer/screens/payment/views/widgets/pdf_for_payment_widget2.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class DocumentPaymentDTNotifier extends StateNotifier<AsyncValue<List<DocumentPaymentDTModel>>> {
  DocumentPaymentDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = await AsyncValue.guard(() async {
      state = const AsyncValue.loading();
      List<DocumentPaymentDTModel> response = await ref.read(apiDocumentPaymentDT).get(
        {"payment_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentPaymentModel? hd = ref.read(documentPaymentProvider).value;
      pw.Document pdfFile = pw.Document();
      List<DocumentPaymentDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 8 == 0) {
          var page = await PDFGeneratorPayment().generate(hd: hd!, dt: dataWidget);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorPayment().generate(hd: hd!, dt: dataWidget);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfPayMentProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      // try {
      //   List<int> intFile = await pdfFile.save();
      //   String base64File = base64Encode(intFile);
      //   List<int> listPDF = base64Decode(base64File);
      //   ref.read(filePdfPayMentViewProvider.notifier).state = Uint8List.fromList(listPDF);
      //   ref.read(filePdfPayMentFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
      //   if (kDebugMode) print('Success filePdfPayMentViewProvider');
      // } catch (e) {
      //   if (kDebugMode) print('Error filePdfPayMentViewProvider : $e');
      //   ref.read(filePdfPayMentViewProvider.notifier).state = null;
      // }
    } else {
      ref.read(filePdfPayMentViewProvider.notifier).state = null;
    }
  }
}

final documentPaymentDTProvider =
    StateNotifierProvider<DocumentPaymentDTNotifier, AsyncValue<List<DocumentPaymentDTModel>>>((ref) => DocumentPaymentDTNotifier(ref));

final filePdfPayMentProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfPayMentViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfPayMentFileProvider = StateProvider<File?>((ref) => null);
