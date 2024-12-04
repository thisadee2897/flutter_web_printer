import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/purchaseorder_model.dart';
import 'package:flutter_web_printer/service/rest_api_service.dart';

class PurchaseorderDTApi {
  final Ref ref;
  PurchaseorderDTApi({required this.ref});
  final String _detail = '/Purchase/Purchaseorder/get_purchaseorder_hd';

  Future<List<PurchaseorderModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data['data']);
    return data.map((e) => PurchaseorderModel.fromJson(e)).toList();
  }
}

final apiPurchaseorderHD = Provider<PurchaseorderDTApi>((ref) => PurchaseorderDTApi(ref: ref));
