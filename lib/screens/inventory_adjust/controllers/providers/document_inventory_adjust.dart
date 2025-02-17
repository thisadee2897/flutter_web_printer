import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_inventory_adjust.dart';
import 'document_inventory_adjust_dt.dart';

class DocumentInventoryAdjustNotifier extends StateNotifier<AsyncValue<DocumentInventoryAdjustModel>> {
  DocumentInventoryAdjustNotifier(this.ref) : super(const AsyncValue.data(DocumentInventoryAdjustModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentInventoryAdjustModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentInventoryAdjustModel response = await ref.read(apiDocumentInventoryAdjust).get({"adjust_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentInventoryAdjustDTProvider.notifier).get(id: id);
    }
  }
}

final documentInventoryAdjustProvider = StateNotifierProvider<DocumentInventoryAdjustNotifier, AsyncValue<DocumentInventoryAdjustModel>>((ref) => DocumentInventoryAdjustNotifier(ref));
