import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_receivable_cash_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_receivable_cash.dart';
import 'document_receivable_cash_dt.dart';

class DocumentReceivableCashNotifier extends StateNotifier<AsyncValue<DocumentReceivableCashModel>> {
  DocumentReceivableCashNotifier(this.ref) : super(const AsyncValue.data(DocumentReceivableCashModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentReceivableCashModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentReceivableCashModel response = await ref.read(apiDocumentReceivableCash).get({"receivable_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentReceivableCashDTProvider.notifier).get(id: id);
    }
  }
}

final documentReceivableCashProvider =
    StateNotifierProvider<DocumentReceivableCashNotifier, AsyncValue<DocumentReceivableCashModel>>((ref) => DocumentReceivableCashNotifier(ref));
