import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_inventory_requisition_widget.dart';
import '../apis/document_inventory_requisition_dt.dart';
import 'document_inventory_requisition.dart';

class DocumentInventoryRequisitionDTNotifier extends StateNotifier<AsyncValue<List<DocumentInventoryRequisitionDTModel>>> {
  DocumentInventoryRequisitionDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentInventoryRequisitionDTModel> response = await ref.read(apiDocumentInventoryRequisitionDT).get(
        {"requisition_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentInventoryRequisitionModel? hd = ref.read(documentInventoryRequisitionProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentInventoryRequisitionDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 15 == 0) {
          var page = await PDFGeneratorInventoryRequisition().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorInventoryRequisition().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfInventoryRequisitionProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfInventoryRequisitionViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfInventoryRequisitionFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfInventoryRequisitionViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfInventoryRequisitionViewProvider.notifier).state = null;
    }
  }
}

final documentInventoryRequisitionDTProvider = StateNotifierProvider<DocumentInventoryRequisitionDTNotifier, AsyncValue<List<DocumentInventoryRequisitionDTModel>>>((ref) => DocumentInventoryRequisitionDTNotifier(ref));

final filePdfInventoryRequisitionProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfInventoryRequisitionViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfInventoryRequisitionFileProvider = StateProvider<File?>((ref) => null);
