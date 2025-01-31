import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:flutter_web_printer/screens/sale/controllers/apis/document_sale.dart';
import 'package:flutter_web_printer/screens/sale/controllers/providers/document_sale_dt.dart';

class DocumentSaleNotifier extends StateNotifier<AsyncValue<DocumentSaleModel>> {
  DocumentSaleNotifier(this.ref) : super(const AsyncValue.data(DocumentSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentSaleModel response = await ref.read(apiDocumentSale).get({"sale_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentSaleDTProvider.notifier).get(id: id);
    }
  }
}

final documentSaleProvider = StateNotifierProvider<DocumentSaleNotifier, AsyncValue<DocumentSaleModel>>((ref) => DocumentSaleNotifier(ref));
