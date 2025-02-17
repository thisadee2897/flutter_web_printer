import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentGoodReceiveCreditDTApi {
  final Ref ref;
  DocumentGoodReceiveCreditDTApi({required this.ref});
  final String _detail = '/Purchase/ReceiveGoods/get_document_receive_dt';

  Future<List<DocumentReceiveGoodDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentReceiveGoodDTModel.fromJson(e)).toList();
  }
}

final apiDocumentGoodReceiveCreditDT = Provider<DocumentGoodReceiveCreditDTApi>((ref) => DocumentGoodReceiveCreditDTApi(ref: ref));
