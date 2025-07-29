import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/earning_statement_model.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_earning_statement_widget.dart';
import '../apis/earning_statement.dart';

class DocumentEarningStatementDTNotifier extends StateNotifier<AsyncValue<List<EarningStatementModel>>> {
  DocumentEarningStatementDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({
    required String? begin,
    required String? end,
    required List<dynamic>? branchId,
    required String? companyId,
    required String? typeFind,
  }) async {
    EarningStatementHD? hd = EarningStatementHD();
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<EarningStatementModel> response = await ref.read(apiEarningStatementDT).get({
        "date_begin": begin,
        "date_end": end,
        "master_branch_id": branchId,
        "master_company_id": companyId,
        "type_find": typeFind,
      });
      try {
        hd.startDate = DateTime.parse(begin!).toLocal();
        hd.endDate = DateTime.parse(end!).toLocal();
        hd.branchId = branchId!.map((e) => e as int).toList();
        hd.companyId = companyId;
        hd.typeFind = typeFind;
        hd.isCancel = response.any((element) => element.isCancel == true);
      } catch (e) {
        if (kDebugMode) print('Error : $e');
      }
      if (num.parse(response.last.sumProfit!) < 0) {
        response.last = response.last.copyWith(
          sumProfit: (num.parse(response.last.sumProfit!) * -1).toString(),
        );
      }
      // print(response);
      return response;
    });
    if (state.hasValue) {
      pw.Document pdfFile = pw.Document();
      // List<EarningStatementModel> dataWidget = [];
      List<EarningStatementMappingModel> mappedData = mapEarningStatements(state.value!);
      var page = await PDFGeneratorEarningStatement().generate(hd: hd, dt: mappedData);
      pdfFile.addPage(page);
      // for (int i = 1; i <= state.value!.length; i++) {
      //   dataWidget.add(state.value![i - 1]);
      //   if (i % 10 == 0) {
      //     var page = await PDFGeneratorEarningStatement().generate(hd: hd, dt: mappedData);
      //     pdfFile.addPage(page);
      //     dataWidget = [];
      //   } else {
      //     if (i == state.value!.length) {
      //       var page = await PDFGeneratorEarningStatement().generate(hd: hd, dt: mappedData);
      //       pdfFile.addPage(page);
      //     }
      //   }
      // }
      ref.read(filePdfEarningStatementProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfEarningStatementViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfEarningStatementFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfEarningStatementViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfEarningStatementViewProvider.notifier).state = null;
    }
  }

  List<EarningStatementMappingModel> mapEarningStatements(List<EarningStatementModel> data) {
    final groupedData = groupBy(data, (EarningStatementModel e) => e.accountCategoryName);
    return groupedData.entries.map((entry) {
      final categoryName = entry.key;
      final categoryList = entry.value;

      return EarningStatementMappingModel(
        title: categoryName,
        sumTotal: categoryList.fold(0, (sum, item) => sum! + num.parse(item.sumProfit!)), // รวมค่า sumProfit
        detail: categoryList,
      );
    }).toList();
  }
}

final documentEarningStatementDTProvider =
    StateNotifierProvider<DocumentEarningStatementDTNotifier, AsyncValue<List<EarningStatementModel>>>((ref) => DocumentEarningStatementDTNotifier(ref));

final filePdfEarningStatementProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfEarningStatementViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfEarningStatementFileProvider = StateProvider<File?>((ref) => null);

class EarningStatementHD {
  DateTime? startDate;
  DateTime? endDate;
  List<int>? branchId;
  String? companyId;
  String? typeFind;
  bool? isCancel;
  EarningStatementHD({
    this.startDate,
    this.endDate,
    this.branchId,
    this.companyId,
    this.typeFind,
    this.isCancel = false,
  });
  //tojson
  Map<String, dynamic> toJson() {
    return {
      "start_date": startDate,
      "end_date": endDate,
      "branch_id": branchId,
      "company_id": companyId,
      "type_find": typeFind,
      "is_cancel": isCancel,
    };
  }
}

class EarningStatementMappingModel {
  String? title;
  num? sumTotal;
  List<EarningStatementModel>? detail;
  EarningStatementMappingModel({
    this.title,
    this.sumTotal,
    this.detail,
  });
  //tojson
  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "sum_total": sumTotal,
      "detail": detail,
    };
  }
}
