import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentGoodReceiveCreditApi {
  final Ref ref;
  DocumentGoodReceiveCreditApi({required this.ref});
  final String _detail = '/Purchase/ReceiveGoods/get_document_receive';

  Future<DocumentReceiveGoodModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentReceiveGoodModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentReceiveGoodModel.fromJson(data);
    }
  }
}

final apiDocumentGoodReceiveCredit = Provider<DocumentGoodReceiveCreditApi>((ref) => DocumentGoodReceiveCreditApi(ref: ref));
