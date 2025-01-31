import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_product_return_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_return_product_credit.dart';
import 'document_return_product_credit_dt.dart';

class DocumentReturnProductCreditNotifier extends StateNotifier<AsyncValue<DocumentProductReturnModel>> {
  DocumentReturnProductCreditNotifier(this.ref) : super(const AsyncValue.data(DocumentProductReturnModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentProductReturnModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentProductReturnModel response = await ref.read(apiDocumentReturnProductCredit).get({"returnproduct_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentReturnProductCreditDTProvider.notifier).get(id: id);
    }
  }
}

final documentReturnProductCreditProvider =
    StateNotifierProvider<DocumentReturnProductCreditNotifier, AsyncValue<DocumentProductReturnModel>>((ref) => DocumentReturnProductCreditNotifier(ref));
