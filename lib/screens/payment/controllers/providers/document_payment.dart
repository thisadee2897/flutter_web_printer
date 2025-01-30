import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_payment_model.dart';
import 'package:flutter_web_printer/screens/payment/controllers/apis/document_payment.dart';
import 'package:flutter_web_printer/screens/payment/controllers/providers/company.dart';

class DocumentPaymentNotifier extends StateNotifier<AsyncValue<DocumentPaymentModel>> {
  DocumentPaymentNotifier(this.ref) : super(const AsyncValue.data(DocumentPaymentModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentPaymentModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentPaymentModel response = await ref.read(apiDocumentPayment).get({"payment_hd_id": id});
      await ref.read(companyProvider.notifier).get(id: response.companyId);
      return response;
    });
  }
}

final documentPaymentProvider = StateNotifierProvider<DocumentPaymentNotifier, AsyncValue<DocumentPaymentModel>>((ref) => DocumentPaymentNotifier(ref));
