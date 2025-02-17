import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_good_receive_credit.dart';
import 'document_good_receive_credit_dt.dart';

class DocumentGoodReceiveCreditNotifier extends StateNotifier<AsyncValue<DocumentReceiveGoodModel>> {
  DocumentGoodReceiveCreditNotifier(this.ref) : super(const AsyncValue.data(DocumentReceiveGoodModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentReceiveGoodModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentReceiveGoodModel response = await ref.read(apiDocumentGoodReceiveCredit).get({"receive_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentGoodReceiveCreditDTProvider.notifier).get(id: id);
    }
  }
}

final documentGoodReceiveCreditProvider =
    StateNotifierProvider<DocumentGoodReceiveCreditNotifier, AsyncValue<DocumentReceiveGoodModel>>((ref) => DocumentGoodReceiveCreditNotifier(ref));
