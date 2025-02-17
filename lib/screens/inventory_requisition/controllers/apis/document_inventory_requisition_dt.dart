import 'package:flutter_web_printer/apps/app_exports.dart';




class DocumentInventoryRequisitionDTApi {
  final Ref ref;
  DocumentInventoryRequisitionDTApi({required this.ref});
  final String _detail = '/Inventory/Requisition/get_document_requisition_dt';
  Future<List<DocumentInventoryRequisitionDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentInventoryRequisitionDTModel.fromJson(e)).toList();
  }
}

final apiDocumentInventoryRequisitionDT = Provider<DocumentInventoryRequisitionDTApi>((ref) => DocumentInventoryRequisitionDTApi(ref: ref));
