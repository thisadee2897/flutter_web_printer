
import 'package:flutter_web_printer/apps/app_exports.dart';
class DocumentPurchaseOrderApi {
  final Ref ref;
  DocumentPurchaseOrderApi({required this.ref});
  final String _detail = '/Purchase/Purchaseorder/get_document_purchaseorder';

  Future<DocumentPurchaseOrderModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentPurchaseOrderModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentPurchaseOrderModel.fromJson(data);
    }
  }
}

final apiDocumentPurchaseOrder = Provider<DocumentPurchaseOrderApi>((ref) => DocumentPurchaseOrderApi(ref: ref));
