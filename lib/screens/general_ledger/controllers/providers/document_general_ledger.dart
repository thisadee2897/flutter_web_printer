import 'package:flutter_web_printer/apps/app_exports.dart';
import '../../../payment/controllers/providers/company.dart';
import '../apis/document_general_ledger.dart';
import 'document_general_ledger_dt.dart';

class DocumentGeneralLedgerNotifier extends StateNotifier<AsyncValue<DocumentGeneralLedgerModel>> {
  DocumentGeneralLedgerNotifier(this.ref) : super(const AsyncValue.data(DocumentGeneralLedgerModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentGeneralLedgerModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentGeneralLedgerModel response = await ref.read(apiDocumentGeneralLedger).get({"glhdid": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentGeneralLedgerDTProvider.notifier).get(id: id);
    }
  }
}

final documentGeneralLedgerProvider = StateNotifierProvider<DocumentGeneralLedgerNotifier, AsyncValue<DocumentGeneralLedgerModel>>((ref) => DocumentGeneralLedgerNotifier(ref));
