import 'package:flutter_web_printer/apps/app_exports.dart';


class DocumentExpenseCashDTApi {
  final Ref ref;
  DocumentExpenseCashDTApi({required this.ref});
  final String _detail = '/Expense/Expense/get_document_expense_dt';

  Future<List<DocumentExpenseDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentExpenseDTModel.fromJson(e)).toList();
  }
}

final apiDocumentExpenseCashDT = Provider<DocumentExpenseCashDTApi>((ref) => DocumentExpenseCashDTApi(ref: ref));
