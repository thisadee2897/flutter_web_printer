import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/detail_tax_invoice_model.dart';
import 'package:flutter_web_printer/models/full_tax_invoice_model.dart';
import 'package:flutter_web_printer/screens/goodmeal_full_tax_invoice/controllers/apis/print_full_tax_invoice.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_report_hq_vat_postt_sale_widget.dart';

class FullTaxInvoiceNotifier extends StateNotifier<AsyncValue<List<FullTaxInvoiceModel>>> {
  FullTaxInvoiceNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required Map<String, dynamic> body}) async {
    if (body.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<FullTaxInvoiceModel> response = await ref.read(apiFullTaxInvoice).getDummy(body);
      return response;
    });
    if (state.hasValue) {
      // HDFullTaxInvoiceModel? hd = ref.read(hdFullTaxInvoiceProvider).value;
      // final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DetailTaxInvoiceModel> dataWidget = [];

      try {
        for (FullTaxInvoiceModel element in state.value!) {
          List detailList = element.details?.map((e) => e).toList() ?? [];
          dataWidget = [];
          for (int i = 1; i <= detailList.length; i++) {
            dataWidget.add(detailList[i - 1]);
            if (element.original == true) {
              if (i % 10 == 0) {
                element = element.copyWith(details: dataWidget);
                var page = await PDFGeneratorFullTaxInvoice().generate(dt: element, type: "ต้นฉบับ");
                pdfFile.addPage(page);
                dataWidget = [];
              } else {
                if (i == detailList.length) {
                  element = element.copyWith(details: dataWidget);
                  var page = await PDFGeneratorFullTaxInvoice().generate(dt: element, type: "ต้นฉบับ");
                  pdfFile.addPage(page);
                }
              }
            }
            if (element.copy == true) {
              if (i % 10 == 0) {
                element = element.copyWith(details: dataWidget);
                var page = await PDFGeneratorFullTaxInvoice().generate(dt: element, type: "สำเนา");
                pdfFile.addPage(page);
                dataWidget = [];
              } else {
                if (i == detailList.length) {
                  element = element.copyWith(details: dataWidget);
                  var page = await PDFGeneratorFullTaxInvoice().generate(dt: element, type: "สำเนา");
                  pdfFile.addPage(page);
                }
              }
            }
          }
        }
      } catch (e, stx) {
        if (kDebugMode) print('Error generating PDF: $e');
        if (kDebugMode) print('StackTrace : $stx');
      }
      ref.read(filePdfFullTaxInvoiceProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());
      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfFullTaxInvoiceViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfFullTaxInvoiceFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e, stx) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        if (kDebugMode) print('StackTrace : $stx');
        ref.read(filePdfFullTaxInvoiceViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfFullTaxInvoiceViewProvider.notifier).state = null;
    }
  }
}

final fullTaxInvoiceProvider = StateNotifierProvider<FullTaxInvoiceNotifier, AsyncValue<List<FullTaxInvoiceModel>>>((ref) => FullTaxInvoiceNotifier(ref));
final filePdfFullTaxInvoiceProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfFullTaxInvoiceViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfFullTaxInvoiceFileProvider = StateProvider<File?>((ref) => null);
