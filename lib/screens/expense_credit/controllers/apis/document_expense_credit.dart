import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentExpenseCreditApi {
  final Ref ref;
  DocumentExpenseCreditApi({required this.ref});
  final String _detail = '/Expense/Expense/get_document_expense';

  Future<DocumentExpenseModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentExpenseModel();
    } else {
      try {
        DocumentExpenseModel data = DocumentExpenseModel.fromJson(response.data);
        return data;
      } catch (e) {
        print("Error parsing response: $e");
        // ref.read(routerHelperProvider).goPath('/error');
        return const DocumentExpenseModel();
      }
    }
  }
}

final apiDocumentExpenseCredit = Provider<DocumentExpenseCreditApi>((ref) => DocumentExpenseCreditApi(ref: ref));
