import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentExpenseCreditDTApi {
  final Ref ref;
  DocumentExpenseCreditDTApi({required this.ref});
  final String _detail = '/Purchase/ReceiveGoods/get_document_receive_dt';

  Future<List<DocumentExpenseDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentExpenseDTModel.fromJson(e)).toList();
  }
}

final apiDocumentExpenseCreditDT = Provider<DocumentExpenseCreditDTApi>((ref) => DocumentExpenseCreditDTApi(ref: ref));
