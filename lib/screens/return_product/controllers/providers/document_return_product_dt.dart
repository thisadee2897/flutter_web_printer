import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../views/widgets/pdf_for_return_product_widget.dart';
import '../apis/document_return_product_dt.dart';
import 'document_return_product.dart';

class DocumentReturnProductDTNotifier extends StateNotifier<AsyncValue<List<DocumentSaleDTModel>>> {
  DocumentReturnProductDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<DocumentSaleDTModel> response = await ref.read(apiDocumentReturnProductDT).get(
        {"sale_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      DocumentSaleModel? hd = ref.read(documentReturnProductProvider).value;
      final company = ref.read(companyDataProvider);
      pw.Document pdfFile = pw.Document();
      List<DocumentSaleDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 10 == 0) {
          var page = await PDFGeneratorReturnProduct().generate(hd: hd!, dt: dataWidget, company: company);
          pdfFile.addPage(page);
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            var page = await PDFGeneratorReturnProduct().generate(hd: hd!, dt: dataWidget, company: company);
            pdfFile.addPage(page);
          }
        }
      }
      ref.read(filePdfReturnProductProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());

      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReturnProductViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReturnProductFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        ref.read(filePdfReturnProductViewProvider.notifier).state = null;
      }
    } else {
      ref.read(filePdfReturnProductViewProvider.notifier).state = null;
    }
  }
}

final documentReturnProductDTProvider =
    StateNotifierProvider<DocumentReturnProductDTNotifier, AsyncValue<List<DocumentSaleDTModel>>>((ref) => DocumentReturnProductDTNotifier(ref));

final filePdfReturnProductProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReturnProductViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReturnProductFileProvider = StateProvider<File?>((ref) => null);
