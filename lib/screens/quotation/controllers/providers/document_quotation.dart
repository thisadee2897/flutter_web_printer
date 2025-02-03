import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_quotation_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_quotation.dart';
import 'document_quotation_dt.dart';

class DocumentQuotationNotifier extends StateNotifier<AsyncValue<DocumentQuotationModel>> {
  DocumentQuotationNotifier(this.ref) : super(const AsyncValue.data(DocumentQuotationModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentQuotationModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentQuotationModel response = await ref.read(apiDocumentQuotation).get({"quotation_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentQuotationDTProvider.notifier).get(id: id);
    }
  }
}

final documentQuotationProvider = StateNotifierProvider<DocumentQuotationNotifier, AsyncValue<DocumentQuotationModel>>((ref) => DocumentQuotationNotifier(ref));
