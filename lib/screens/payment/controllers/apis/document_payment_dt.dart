

import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentPaymentDTApi {
  final Ref ref;
  DocumentPaymentDTApi({required this.ref});
  final String _detail = '/Payment/Payment/get_document_payment_dt';

  Future<List<DocumentPaymentDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentPaymentDTModel.fromJson(e)).toList();
  }
}

final apiDocumentPaymentDT = Provider<DocumentPaymentDTApi>((ref) => DocumentPaymentDTApi(ref: ref));
