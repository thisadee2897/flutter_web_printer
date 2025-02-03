import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/route_helper.dart';
import 'package:flutter_web_printer/models/document_quotation_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class DocumentQuotationApi {
  final Ref ref;
  DocumentQuotationApi({required this.ref});
  final String _detail = '/Saledata/Quotation/get_document_quotation';

  Future<DocumentQuotationModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentQuotationModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentQuotationModel.fromJson(data);
    }
  }
}

final apiDocumentQuotation = Provider<DocumentQuotationApi>((ref) => DocumentQuotationApi(ref: ref));
