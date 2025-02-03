import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_quotation_d_t_model.dart';
import 'package:flutter_web_printer/models/document_quotation_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_quotation_widget.dart';
import '../apis/document_quotation_dt.dart';
import 'document_quotation.dart';

class DocumentQuotationDTNotifier extends StateNotifier<AsyncValue<List<DocumentQuotationDTModel>>> {
  DocumentQuotationDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentQuotationDTModel> response = await ref.read(apiDocumentQuotationDT).get(
        {"quotation_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentQuotationModel? hd = ref.read(documentQuotationProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentQuotationDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorQuotation().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorQuotation().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfQuotationProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfQuotationViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfQuotationFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfQuotationViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfQuotationViewProvider.notifier).state = null;
    }
  }
}

final documentQuotationDTProvider = StateNotifierProvider<DocumentQuotationDTNotifier, AsyncValue<List<DocumentQuotationDTModel>>>((ref) => DocumentQuotationDTNotifier(ref));

final filePdfQuotationProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfQuotationViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfQuotationFileProvider = StateProvider<File?>((ref) => null);
