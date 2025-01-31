import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_return_product.dart';
import 'document_return_product_dt.dart';

class DocumentReturnProductNotifier extends StateNotifier<AsyncValue<DocumentSaleModel>> {
  DocumentReturnProductNotifier(this.ref) : super(const AsyncValue.data(DocumentSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentSaleModel response = await ref.read(apiDocumentReturnProduct).get({"sale_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentReturnProductDTProvider.notifier).get(id: id);
    }
  }
}

final documentReturnProductProvider = StateNotifierProvider<DocumentReturnProductNotifier, AsyncValue<DocumentSaleModel>>((ref) => DocumentReturnProductNotifier(ref));
