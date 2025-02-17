import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentPurchaseOrderDTApi {
  final Ref ref;
  DocumentPurchaseOrderDTApi({required this.ref});
  final String _detail = '/Purchase/Purchaseorder/get_document_purchaseorder_dt';
  Future<List<DocumentPurchaseOrderDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentPurchaseOrderDTModel.fromJson(e)).toList();
  }
}

final apiDocumentPurchaseOrderDT = Provider<DocumentPurchaseOrderDTApi>((ref) => DocumentPurchaseOrderDTApi(ref: ref));
