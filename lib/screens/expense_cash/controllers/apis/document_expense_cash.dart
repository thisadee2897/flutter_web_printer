import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentExpenseCashApi {
  final Ref ref;
  DocumentExpenseCashApi({required this.ref});
  final String _detail = '/Expense/Expense/get_document_expense';
  Future<DocumentExpenseModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentExpenseModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentExpenseModel.fromJson(data);
    }
  }
}

final apiDocumentExpenseCash = Provider<DocumentExpenseCashApi>((ref) => DocumentExpenseCashApi(ref: ref));
