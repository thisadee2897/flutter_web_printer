import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/route_helper.dart';
import 'package:flutter_web_printer/models/document_order_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class DocumentOrderApi {
  final Ref ref;
  DocumentOrderApi({required this.ref});
  final String _detail = '/Saledata/Order/get_document_order';

  Future<DocumentOrderModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentOrderModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentOrderModel.fromJson(data);
    }
  }
}

final apiDocumentOrder = Provider<DocumentOrderApi>((ref) => DocumentOrderApi(ref: ref));
