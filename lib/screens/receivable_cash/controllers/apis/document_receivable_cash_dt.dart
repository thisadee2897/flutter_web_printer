import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_receivable_cash_d_t_model.dart';

class DocumentReceivableCashDTApi {
  final Ref ref;
  DocumentReceivableCashDTApi({required this.ref});
  final String _detail = '/Receivable/Receivable/get_document_receivable_dt';
  Future<List<DocumentReceivableCashDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentReceivableCashDTModel.fromJson(e)).toList();
  }
}

final apiDocumentReceivableCashDT = Provider<DocumentReceivableCashDTApi>((ref) => DocumentReceivableCashDTApi(ref: ref));
