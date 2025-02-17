import 'package:flutter_web_printer/apps/app_exports.dart';



class DocumentInventoryAdjustDTApi {
  final Ref ref;
  DocumentInventoryAdjustDTApi({required this.ref});
  final String _detail = '/Inventory/Adjust/get_document_adjust_dt';
  Future<List<DocumentInventoryAdjustDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentInventoryAdjustDTModel.fromJson(e)).toList();
  }
}

final apiDocumentInventoryAdjustDT = Provider<DocumentInventoryAdjustDTApi>((ref) => DocumentInventoryAdjustDTApi(ref: ref));
