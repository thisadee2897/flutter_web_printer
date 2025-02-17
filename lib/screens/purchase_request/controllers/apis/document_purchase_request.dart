import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentPurchaseRequestApi {
  final Ref ref;
  DocumentPurchaseRequestApi({required this.ref});
  final String _detail = '/Purchase/Purchaserequest/get_document_purchaserequest';

  Future<DocumentPurchaseRequestModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentPurchaseRequestModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentPurchaseRequestModel.fromJson(data);
    }
  }
}

final apiDocumentPurchaseRequest = Provider<DocumentPurchaseRequestApi>((ref) => DocumentPurchaseRequestApi(ref: ref));
