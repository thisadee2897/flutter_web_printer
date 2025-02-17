import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentInventoryAdjustApi {
  final Ref ref;
  DocumentInventoryAdjustApi({required this.ref});
  final String _detail = '/Inventory/Adjust/get_document_adjust';

  Future<DocumentInventoryAdjustModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentInventoryAdjustModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentInventoryAdjustModel.fromJson(data);
    }
  }
}

final apiDocumentInventoryAdjust = Provider<DocumentInventoryAdjustApi>((ref) => DocumentInventoryAdjustApi(ref: ref));
