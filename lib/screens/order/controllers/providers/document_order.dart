import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_order_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_order.dart';
import 'document_order_dt.dart';

class DocumentOrderNotifier extends StateNotifier<AsyncValue<DocumentOrderModel>> {
  DocumentOrderNotifier(this.ref) : super(const AsyncValue.data(DocumentOrderModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentOrderModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentOrderModel response = await ref.read(apiDocumentOrder).get({"order_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentOrderDTProvider.notifier).get(id: id);
    }
  }
}

final documentOrderProvider = StateNotifierProvider<DocumentOrderNotifier, AsyncValue<DocumentOrderModel>>((ref) => DocumentOrderNotifier(ref));
