import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentInventoryRequisitionApi {
  final Ref ref;
  DocumentInventoryRequisitionApi({required this.ref});
  final String _detail = '/Inventory/Requisition/get_document_requisition';

  Future<DocumentInventoryRequisitionModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentInventoryRequisitionModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentInventoryRequisitionModel.fromJson(data);
    }
  }
}

final apiDocumentInventoryRequisition = Provider<DocumentInventoryRequisitionApi>((ref) => DocumentInventoryRequisitionApi(ref: ref));
