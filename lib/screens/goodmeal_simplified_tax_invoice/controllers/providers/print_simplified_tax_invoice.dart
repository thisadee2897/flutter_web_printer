import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/detail_tax_invoice_model.dart';
import 'package:flutter_web_printer/models/simplified_tax_invoice_model.dart';
import 'package:flutter_web_printer/screens/goodmeal_simplified_tax_invoice/controllers/apis/print_simplified_tax_invoice.dart';
import 'package:flutter_web_printer/screens/goodmeal_simplified_tax_invoice/views/widgets/pdf_for_simplified_tax_invoice_widget.dart';
import 'package:pdf/widgets.dart' as pw;

class SimplifiedTaxInvoiceNotifier extends StateNotifier<AsyncValue<List<SimplifiedTaxInvoiceModel>>> {
  SimplifiedTaxInvoiceNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required Map<String, dynamic> body}) async {
    if (body.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<SimplifiedTaxInvoiceModel> response = await ref.read(apiSimplifiedTaxInvoice).getDummy(body);
      return response;
    });
    if (state.hasValue) {
      pw.Document pdfFile = pw.Document();
      List<DetailTaxInvoiceModel> dataWidget = [];
      try {
        for (SimplifiedTaxInvoiceModel element in state.value!) {
          List detailList = element.details?.map((e) => e).toList() ?? [];
          print('detailList: ${detailList.length}');
          dataWidget = [];
          for (int i = 1; i <= detailList.length; i++) {
            dataWidget.add(detailList[i - 1]);
            var detailLines = dataWidget.length;
            int itemPoints = element.footer!.points!.length;
            int itemCategories = element.footer!.categories!.length;
            int itemPaymentMethods = element.footer!.paymentMethods!.length;
            int itemDiscounts = element.footer!.discounts!.length;
            bool canShowFooter = (i + itemPoints + itemCategories + itemPaymentMethods + itemDiscounts) % 30 == 0;
            bool showFooter = false;
            int footerSectionDiscounts = 7 + itemDiscounts;
            int footerSectionPaymentMethods = 4 + itemPaymentMethods;
            int footerSectionCategories = 3 + itemCategories;
            int footerSectionPoints = 1 + itemPoints;
            int totalFooterLines = 0;
            if (detailLines + footerSectionDiscounts <= 30) {
              totalFooterLines = footerSectionDiscounts;
              if (detailLines + totalFooterLines + footerSectionPaymentMethods <= 30) {
                totalFooterLines += footerSectionPaymentMethods;
                if (detailLines + totalFooterLines + footerSectionCategories <= 30) {
                  totalFooterLines += footerSectionCategories;
                  if (detailLines + totalFooterLines + footerSectionPoints <= 30) {
                    totalFooterLines += footerSectionPoints;
                  }
                }
              }
            }
            if (i % 30 == 0 && showFooter == false) {
              element = element.copyWith(details: dataWidget);
              var page = await PDFGeneratorSimplifiedTaxInvoice().generate(dt: element);
              pdfFile.addPage(page);
              dataWidget = [];
            }
            if (i == detailList.length) {
              element = element.copyWith(details: dataWidget);
              var page = await PDFGeneratorSimplifiedTaxInvoice().generate(dt: element, showFooter: true);
              pdfFile.addPage(page);
            }
            print('i: $i, detailList.length: ${detailList.length}, dataWidget.length: ${dataWidget.length}');
          }
        }
      } catch (e, stx) {
        if (kDebugMode) print('Error generating PDF: $e');
        if (kDebugMode) print('StackTrace generating---><: $stx');
      }
      ref.read(filePdfSimplifiedTaxInvoiceProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());
      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfSimplifiedTaxInvoiceViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfSimplifiedTaxInvoiceFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e, stx) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        if (kDebugMode) print('StackTrace ------<>: $stx');
        ref.read(filePdfSimplifiedTaxInvoiceViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfSimplifiedTaxInvoiceViewProvider.notifier).state = null;
    }
  }
}

final simplifiedTaxInvoiceProvider =
    StateNotifierProvider<SimplifiedTaxInvoiceNotifier, AsyncValue<List<SimplifiedTaxInvoiceModel>>>((ref) => SimplifiedTaxInvoiceNotifier(ref));
final filePdfSimplifiedTaxInvoiceProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfSimplifiedTaxInvoiceViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfSimplifiedTaxInvoiceFileProvider = StateProvider<File?>((ref) => null);
