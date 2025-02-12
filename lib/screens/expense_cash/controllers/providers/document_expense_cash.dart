import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/expense_cash/controllers/apis/document_expense_cash.dart';
import 'package:flutter_web_printer/screens/expense_cash/controllers/providers/document_expense_cash_dt.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';

class DocumentExpenseCashNotifier extends StateNotifier<AsyncValue<DocumentSaleModel>> {
  DocumentExpenseCashNotifier(this.ref) : super(const AsyncValue.data(DocumentSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentSaleModel response = await ref.read(apiDocumentExpenseCash).get({"sale_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentExpenseCashDTProvider.notifier).get(id: id);
    }
  }
}

final documentExpenseCashProvider = StateNotifierProvider<DocumentExpenseCashNotifier, AsyncValue<DocumentSaleModel>>((ref) => DocumentExpenseCashNotifier(ref));
