import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_purchase_order.dart';
import 'document_purchase_order_dt.dart';

class DocumentPurchaseOrderNotifier extends StateNotifier<AsyncValue<DocumentPurchaseOrderModel>> {
  DocumentPurchaseOrderNotifier(this.ref) : super(const AsyncValue.data(DocumentPurchaseOrderModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentPurchaseOrderModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentPurchaseOrderModel response = await ref.read(apiDocumentPurchaseOrder).get({"purchaseorder_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentPurchaseOrderDTProvider.notifier).get(id: id);
    }
  }
}

final documentPurchaseOrderProvider =
    StateNotifierProvider<DocumentPurchaseOrderNotifier, AsyncValue<DocumentPurchaseOrderModel>>((ref) => DocumentPurchaseOrderNotifier(ref));
