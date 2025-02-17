import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_inventory_requisition.dart';
import 'document_inventory_requisition_dt.dart';

class DocumentInventoryRequisitionNotifier extends StateNotifier<AsyncValue<DocumentInventoryRequisitionModel>> {
  DocumentInventoryRequisitionNotifier(this.ref) : super(const AsyncValue.data(DocumentInventoryRequisitionModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentInventoryRequisitionModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentInventoryRequisitionModel response = await ref.read(apiDocumentInventoryRequisition).get({"requisition_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentInventoryRequisitionDTProvider.notifier).get(id: id);
    }
  }
}

final documentInventoryRequisitionProvider = StateNotifierProvider<DocumentInventoryRequisitionNotifier, AsyncValue<DocumentInventoryRequisitionModel>>((ref) => DocumentInventoryRequisitionNotifier(ref));
