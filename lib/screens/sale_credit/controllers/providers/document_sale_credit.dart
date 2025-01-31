import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:flutter_web_printer/screens/sale_credit/controllers/apis/document_sale_credit.dart';
import 'package:flutter_web_printer/screens/sale_credit/controllers/providers/document_sale_credit_dt.dart';

class DocumentSaleCreditNotifier extends StateNotifier<AsyncValue<DocumentSaleModel>> {
  DocumentSaleCreditNotifier(this.ref) : super(const AsyncValue.data(DocumentSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentSaleModel response = await ref.read(apiDocumentSaleCredit).get({"sale_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentSaleCreditDTProvider.notifier).get(id: id);
    }
  }
}

final documentSaleCreditProvider = StateNotifierProvider<DocumentSaleCreditNotifier, AsyncValue<DocumentSaleModel>>((ref) => DocumentSaleCreditNotifier(ref));
