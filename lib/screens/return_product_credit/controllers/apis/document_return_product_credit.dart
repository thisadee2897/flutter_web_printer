import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/route_helper.dart';
import 'package:flutter_web_printer/models/document_product_return_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class DocumentReturnProductCreditApi {
  final Ref ref;
  DocumentReturnProductCreditApi({required this.ref});
  final String _detail = '/Saledata/ReturnProduct/get_document_returnproduct';

  Future<DocumentProductReturnModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentProductReturnModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentProductReturnModel.fromJson(data);
    }
  }
}

final apiDocumentReturnProductCredit = Provider<DocumentReturnProductCreditApi>((ref) => DocumentReturnProductCreditApi(ref: ref));
