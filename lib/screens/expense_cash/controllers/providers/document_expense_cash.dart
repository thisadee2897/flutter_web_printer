import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_expense_cash.dart';
import 'document_expense_cash_dt.dart';

class DocumentExpenseCashNotifier extends StateNotifier<AsyncValue<DocumentExpenseModel>> {
  DocumentExpenseCashNotifier(this.ref) : super(const AsyncValue.data(DocumentExpenseModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentExpenseModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentExpenseModel response = await ref.read(apiDocumentExpenseCash).get({"expense_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentExpenseCashDTProvider.notifier).get(id: id);
    }
  }
}

final documentExpenseCashProvider =
    StateNotifierProvider<DocumentExpenseCashNotifier, AsyncValue<DocumentExpenseModel>>((ref) => DocumentExpenseCashNotifier(ref));
