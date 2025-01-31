import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_product_return_d_t_model.dart';

class DocumentReturnProductCashDTApi {
  final Ref ref;
  DocumentReturnProductCashDTApi({required this.ref});
  final String _detail = '/Saledata/ReturnProduct/get_document_returnproduct_dt';
  Future<List<DocumentProductReturnDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentProductReturnDTModel.fromJson(e)).toList();
  }
}

final apiDocumentReturnProductCashDT = Provider<DocumentReturnProductCashDTApi>((ref) => DocumentReturnProductCashDTApi(ref: ref));
