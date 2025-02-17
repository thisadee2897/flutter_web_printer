import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_purchase_order_widget.dart';
import '../apis/document_purchase_order_dt.dart';
import 'document_purchase_order.dart';

class DocumentPurchaseOrderDTNotifier extends StateNotifier<AsyncValue<List<DocumentPurchaseOrderDTModel>>> {
  DocumentPurchaseOrderDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentPurchaseOrderDTModel> response = await ref.read(apiDocumentPurchaseOrderDT).get(
        {"purchaseorder_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentPurchaseOrderModel? hd = ref.read(documentPurchaseOrderProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentPurchaseOrderDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorPurchaseOrder().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorPurchaseOrder().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfPurchaseOrderProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfPurchaseOrderViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfPurchaseOrderFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfPurchaseOrderViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfPurchaseOrderViewProvider.notifier).state = null;
    }
  }
}

final documentPurchaseOrderDTProvider =
    StateNotifierProvider<DocumentPurchaseOrderDTNotifier, AsyncValue<List<DocumentPurchaseOrderDTModel>>>((ref) => DocumentPurchaseOrderDTNotifier(ref));

final filePdfPurchaseOrderProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfPurchaseOrderViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfPurchaseOrderFileProvider = StateProvider<File?>((ref) => null);
