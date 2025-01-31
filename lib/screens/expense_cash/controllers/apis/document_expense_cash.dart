import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/route_helper.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class DocumentExpenseCashApi {
  final Ref ref;
  DocumentExpenseCashApi({required this.ref});
  final String _detail = '/Saledata/Sale/get_document_sale';

  Future<DocumentSaleModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentSaleModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentSaleModel.fromJson(data);
    }
  }
}

final apiDocumentExpenseCash = Provider<DocumentExpenseCashApi>((ref) => DocumentExpenseCashApi(ref: ref));
