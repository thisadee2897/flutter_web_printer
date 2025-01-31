import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/expense_credit/controllers/apis/document_expense_credit.dart';
import 'package:flutter_web_printer/screens/expense_credit/controllers/providers/document_expense_credit_dt.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';

class DocumentExpenseCreditNotifier extends StateNotifier<AsyncValue<DocumentSaleModel>> {
  DocumentExpenseCreditNotifier(this.ref) : super(const AsyncValue.data(DocumentSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentSaleModel response = await ref.read(apiDocumentExpenseCredit).get({"sale_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentExpenseCreditDTProvider.notifier).get(id: id);
    }
  }
}

final documentExpenseCreditProvider = StateNotifierProvider<DocumentExpenseCreditNotifier, AsyncValue<DocumentSaleModel>>((ref) => DocumentExpenseCreditNotifier(ref));
