import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentBillDTApi {
  final Ref ref;
  DocumentBillDTApi({required this.ref});
  final String _detail = '/Receivable/Bill/get_document_bill_dt';
  Future<List<DocumentBillDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentBillDTModel.fromJson(e)).toList();
  }
}

final apiDocumentBillDT = Provider<DocumentBillDTApi>((ref) => DocumentBillDTApi(ref: ref));
