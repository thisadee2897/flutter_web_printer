import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/screens/payment/controllers/apis/document_payment_dt.dart';
class DocumentPaymentDTNotifier extends StateNotifier<AsyncValue<List<DocumentPaymentDTModel>>> {
  DocumentPaymentDTNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = await AsyncValue.guard(() async {
      state = const AsyncValue.loading();
      List<DocumentPaymentDTModel> response = await ref.read(apiDocumentPaymentDT).get(
        {"payment_hd_id": id},
      );
      return response;
    });
    if (state.hasValue) {
      //add item ทีละ 8 รายการ ไปเรื่อยๆจนกว่าจะครบ
      List<PDFForPayMentWidget> list = [];
      List<DocumentPaymentDTModel> dataWidget = [];
      for (int i = 1; i <= state.value!.length; i++) {
        dataWidget.add(state.value![i - 1]);
        if (i % 8 == 0) {
          list.add(PDFForPayMentWidget(dataWidget));
          dataWidget = [];
        } else {
          if (i == state.value!.length) {
            list.add(PDFForPayMentWidget(dataWidget));
          }
        }
      }
      ref.read(documentWidgetProvider.notifier).state = list;
    } else {
      ref.read(documentWidgetProvider.notifier).state = [];
    }
  }
}

final documentPaymentDTProvider =
    StateNotifierProvider<DocumentPaymentDTNotifier, AsyncValue<List<DocumentPaymentDTModel>>>((ref) => DocumentPaymentDTNotifier(ref));
