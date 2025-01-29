import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/purchaseorder_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class CompanyApi {
  final Ref ref;
  CompanyApi({required this.ref});
  final String _detail = '/Payment/Payment/get_document_payment';

  Future<List<PurchaseorderModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data['data']);
    return data.map((e) => PurchaseorderModel.fromJson(e)).toList();
  }
}

final apiCompany = Provider<CompanyApi>((ref) => CompanyApi(ref: ref));
