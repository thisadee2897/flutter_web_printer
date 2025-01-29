import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/document_payment_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class DocumentPaymentApi {
  final Ref ref;
  DocumentPaymentApi({required this.ref});
  final String _detail = '/Payment/Payment/get_document_payment';

  Future<DocumentPaymentModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
    return DocumentPaymentModel.fromJson(data);
  }
}

final apiDocumentPayment = Provider<DocumentPaymentApi>((ref) => DocumentPaymentApi(ref: ref));
