import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';

class DocumentReturnProductDTApi {
  final Ref ref;
  DocumentReturnProductDTApi({required this.ref});
  final String _detail = '/Saledata/ReturnProduct/get_document_returnproduct_dt';
  Future<List<DocumentSaleDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentSaleDTModel.fromJson(e)).toList();
  }
}

final apiDocumentReturnProductDT = Provider<DocumentReturnProductDTApi>((ref) => DocumentReturnProductDTApi(ref: ref));
