import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_order_d_t_model.dart';


class DocumentOrderDTApi {
  final Ref ref;
  DocumentOrderDTApi({required this.ref});
  final String _detail = '/Saledata/Order/get_document_order_dt';
  Future<List<DocumentOrderDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentOrderDTModel.fromJson(e)).toList();
  }
}

final apiDocumentOrderDT = Provider<DocumentOrderDTApi>((ref) => DocumentOrderDTApi(ref: ref));
