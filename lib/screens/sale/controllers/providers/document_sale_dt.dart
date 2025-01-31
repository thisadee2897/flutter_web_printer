import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_payment_model.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/apis/document_payment_dt.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:flutter_web_printer/screens/sale/controllers/apis/document_sale_dt.dart';
import 'package:flutter_web_printer/screens/sale/controllers/providers/document_sale.dart';
import 'package:flutter_web_printer/screens/sale/views/widgets/pdf_for_sale_widget.dart';
import 'package:pdf/widgets.dart' as pw;

class DocumentSaleDTNotifier extends StateNotifier<AsyncValue<List<DocumentSaleDTModel>>> {
  DocumentSaleDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentSaleDTModel> response = await ref.read(apiDocumentSaleDT).get(
        {"sale_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentSaleModel? hd = ref.read(documentSaleProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentSaleDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorSale().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorSale().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfSaleProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfSaleViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfSaleFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfSaleViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfSaleViewProvider.notifier).state = null;
    }
  }
}

final documentSaleDTProvider = StateNotifierProvider<DocumentSaleDTNotifier, AsyncValue<List<DocumentSaleDTModel>>>((ref) => DocumentSaleDTNotifier(ref));

final filePdfSaleProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfSaleViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfSaleFileProvider = StateProvider<File?>((ref) => null);
