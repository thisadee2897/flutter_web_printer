import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_bill.dart';
import 'document_bill_dt.dart';

class DocumentBillNotifier extends StateNotifier<AsyncValue<DocumentBillModel>> {
  DocumentBillNotifier(this.ref) : super(const AsyncValue.data(DocumentBillModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentBillModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentBillModel response = await ref.read(apiDocumentBill).get({"bill_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentBillDTProvider.notifier).get(id: id);
    }
  }
}

final documentBillProvider =
    StateNotifierProvider<DocumentBillNotifier, AsyncValue<DocumentBillModel>>((ref) => DocumentBillNotifier(ref));
