import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/detail_report_h_q_vat_postt_sale_model.dart';
import 'package:flutter_web_printer/models/h_d_report_h_q_vat_postt_sale_model.dart';
import 'package:flutter_web_printer/screens/goodmeal_report_hq_vat_postt_sale/controllers/apis/report_hq_vat_postt_sale.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_report_hq_vat_postt_sale_widget.dart';
import 'get_company_data.dart';

class DetailReportHQVatPosttSaleNotifier extends StateNotifier<AsyncValue<List<DetailReportHQVatPosttSaleModel>>> {
  DetailReportHQVatPosttSaleNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required Map<String, dynamic> body}) async {
    if (body.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DetailReportHQVatPosttSaleModel> response = await ref.read(apiDetailReportHQVatPosttSale).get(body);
      return response;
    });
    if (state.hasValue) {
      HDReportHQVatPosttSaleModel? hd = ref.read(hdReportHQVatPosttSaleProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DetailReportHQVatPosttSaleModel> dataWidget = [];
      hd = hd?.copyWith(
        startDate: ref.read(startDateProvider).toString(),
        endDate: ref.read(endDateProvider).toString(),
      );
      if (hd?.branchsName == null) {
        try {
          hd = hd?.copyWith(
            branchsName: state.value!.map((e) => e.vatPosttSaleArcustomerBranchNumber ?? '').toSet().toList(),
          );
        } catch (e, stx) {
          if (kDebugMode) print('Error setting branchsName: $e');
          if (kDebugMode) print('StackTrace: $stx');
        }
      }
      // print('branchsName: ${hd?.branchsName}');
      // if(hd?.branchsName )
      // hd!.branchsName!.addAll(state.value!.map((e) => e.vatPosttSaleArcustomerBranchNumber ?? '').toSet().toList());
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 20 == 0) {
          var page = await PDFGeneratorReportHQVatPosttSale().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            Map<String, num> summary = {
              'Baseamnt': state.value!.fold<num>(0, (previousValue, element) => previousValue + num.parse(element.vatPosttSaleBaseamnt.toString())),
              'Vatamnt': state.value!.fold<num>(0, (previousValue, element) => previousValue + num.parse(element.vatPosttSaleVatamnt.toString())),
              'Sumamnt': state.value!.fold<num>(0, (previousValue, element) => previousValue + num.parse(element.vatPosttSaleSumamnt.toString())),
            };
            print('Summary: $summary');
            var page = await PDFGeneratorReportHQVatPosttSale().generate(hd: hd!, dt: dataWidget, company: company, summary: summary);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfReportHQVatPosttSaleProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReportHQVatPosttSaleViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReportHQVatPosttSaleFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e, stx) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        if (kDebugMode) print('StackTrace : $stx');
        ref.read(filePdfReportHQVatPosttSaleViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfReportHQVatPosttSaleViewProvider.notifier).state = null;
    }
  }
}

final detailReportHQVatPosttSaleProvider = StateNotifierProvider<DetailReportHQVatPosttSaleNotifier, AsyncValue<List<DetailReportHQVatPosttSaleModel>>>(
    (ref) => DetailReportHQVatPosttSaleNotifier(ref));

final filePdfReportHQVatPosttSaleProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReportHQVatPosttSaleViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReportHQVatPosttSaleFileProvider = StateProvider<File?>((ref) => null);
final startDateProvider = StateProvider<DateTime>((ref) => DateTime.now());
final endDateProvider = StateProvider<DateTime>((ref) => DateTime.now());
