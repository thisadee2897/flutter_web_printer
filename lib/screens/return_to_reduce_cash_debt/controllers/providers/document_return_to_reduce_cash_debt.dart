import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_return_to_reduce_cash_debt.dart';
import 'document_return_to_reduce_cash_debt_dt.dart';

class DocumentReturnToReduceCashDebtNotifier extends StateNotifier<AsyncValue<DocumentCreditNoteModel>> {
  DocumentReturnToReduceCashDebtNotifier(this.ref) : super(const AsyncValue.data(DocumentCreditNoteModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentCreditNoteModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentCreditNoteModel response = await ref.read(apiDocumentReturnToReduceCashDebt).get({"creditnote_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentReturnToReduceCashDebtDTProvider.notifier).get(id: id);
    }
  }
}

final documentReturnToReduceCashDebtProvider =
    StateNotifierProvider<DocumentReturnToReduceCashDebtNotifier, AsyncValue<DocumentCreditNoteModel>>((ref) => DocumentReturnToReduceCashDebtNotifier(ref));
