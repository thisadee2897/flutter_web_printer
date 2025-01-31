import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import 'package:flutter_web_printer/screens/sale_cash/controllers/apis/document_sale_cash.dart';
import 'package:flutter_web_printer/screens/sale_cash/controllers/providers/document_sale_cash_dt.dart';

class DocumentSaleCashNotifier extends StateNotifier<AsyncValue<DocumentSaleModel>> {
  DocumentSaleCashNotifier(this.ref) : super(const AsyncValue.data(DocumentSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentSaleModel response = await ref.read(apiDocumentSaleCash).get({"sale_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentSaleCashDTProvider.notifier).get(id: id);
    }
  }
}

final documentSaleCashProvider = StateNotifierProvider<DocumentSaleCashNotifier, AsyncValue<DocumentSaleModel>>((ref) => DocumentSaleCashNotifier(ref));
