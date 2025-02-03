import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_order_d_t_model.dart';
import 'package:flutter_web_printer/models/document_order_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_order_widget.dart';
import '../apis/document_order_dt.dart';
import 'document_order.dart';

class DocumentOrderDTNotifier extends StateNotifier<AsyncValue<List<DocumentOrderDTModel>>> {
  DocumentOrderDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentOrderDTModel> response = await ref.read(apiDocumentOrderDT).get(
        {"order_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentOrderModel? hd = ref.read(documentOrderProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentOrderDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorOrder().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorOrder().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfOrderProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfOrderViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfOrderFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfOrderViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfOrderViewProvider.notifier).state = null;
    }
  }
}

final documentOrderDTProvider = StateNotifierProvider<DocumentOrderDTNotifier, AsyncValue<List<DocumentOrderDTModel>>>((ref) => DocumentOrderDTNotifier(ref));

final filePdfOrderProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfOrderViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfOrderFileProvider = StateProvider<File?>((ref) => null);
