import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_purchase_request_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_purchase_request.dart';
import 'document_purchase_request_dt.dart';

class DocumentPurchaseRequestNotifier extends StateNotifier<AsyncValue<DocumentPurchaseRequestModel>> {
  DocumentPurchaseRequestNotifier(this.ref) : super(const AsyncValue.data(DocumentPurchaseRequestModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentPurchaseRequestModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentPurchaseRequestModel response = await ref.read(apiDocumentPurchaseRequest).get({"purchaserequest_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentPurchaseRequestDTProvider.notifier).get(id: id);
    }
  }
}

final documentPurchaseRequestProvider =
    StateNotifierProvider<DocumentPurchaseRequestNotifier, AsyncValue<DocumentPurchaseRequestModel>>((ref) => DocumentPurchaseRequestNotifier(ref));
