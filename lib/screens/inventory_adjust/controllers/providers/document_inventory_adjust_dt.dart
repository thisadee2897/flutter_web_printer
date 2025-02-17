import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_inventory_adjust_widget.dart';
import '../apis/document_inventory_adjust_dt.dart';
import 'document_inventory_adjust.dart';

class DocumentInventoryAdjustDTNotifier extends StateNotifier<AsyncValue<List<DocumentInventoryAdjustDTModel>>> {
  DocumentInventoryAdjustDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentInventoryAdjustDTModel> response = await ref.read(apiDocumentInventoryAdjustDT).get(
        {"adjust_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentInventoryAdjustModel? hd = ref.read(documentInventoryAdjustProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentInventoryAdjustDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorInventoryAdjust().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorInventoryAdjust().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfInventoryAdjustProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfInventoryAdjustViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfInventoryAdjustFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfInventoryAdjustViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfInventoryAdjustViewProvider.notifier).state = null;
    }
  }
}

final documentInventoryAdjustDTProvider = StateNotifierProvider<DocumentInventoryAdjustDTNotifier, AsyncValue<List<DocumentInventoryAdjustDTModel>>>((ref) => DocumentInventoryAdjustDTNotifier(ref));

final filePdfInventoryAdjustProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfInventoryAdjustViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfInventoryAdjustFileProvider = StateProvider<File?>((ref) => null);
