import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_quotation_d_t_model.dart';


class DocumentQuotationDTApi {
  final Ref ref;
  DocumentQuotationDTApi({required this.ref});
  final String _detail = '/Saledata/Quotation/get_document_quotation_dt';
  Future<List<DocumentQuotationDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentQuotationDTModel.fromJson(e)).toList();
  }
}

final apiDocumentQuotationDT = Provider<DocumentQuotationDTApi>((ref) => DocumentQuotationDTApi(ref: ref));
