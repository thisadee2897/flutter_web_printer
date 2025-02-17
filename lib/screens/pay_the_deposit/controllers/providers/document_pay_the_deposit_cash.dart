import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_pay_the_deposit.dart';
import 'document_pay_the_deposit_dt.dart';

class DocumentPayTheDepositNotifier extends StateNotifier<AsyncValue<DocumentPayTheDipositModel>> {
  DocumentPayTheDepositNotifier(this.ref) : super(const AsyncValue.data(DocumentPayTheDipositModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentPayTheDipositModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentPayTheDipositModel response = await ref.read(apiDocumentPayTheDeposit).get({"pay_deposit_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentPayTheDepositDTProvider.notifier).get(id: id);
    }
  }
}

final documentPayTheDepositProvider = StateNotifierProvider<DocumentPayTheDepositNotifier, AsyncValue<DocumentPayTheDipositModel>>((ref) => DocumentPayTheDepositNotifier(ref));
