import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentPurchaseRequestDTApi {
  final Ref ref;
  DocumentPurchaseRequestDTApi({required this.ref});
  final String _detail = '/Purchase/Purchaserequest/get_document_purchaserequest_dt';
  Future<List<DocumentPurchaseRequestDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentPurchaseRequestDTModel.fromJson(e)).toList();
  }
}

final apiDocumentPurchaseRequestDT = Provider<DocumentPurchaseRequestDTApi>((ref) => DocumentPurchaseRequestDTApi(ref: ref));
