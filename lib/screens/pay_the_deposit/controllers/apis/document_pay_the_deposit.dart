
import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentPayTheDepositApi {
  final Ref ref;
  DocumentPayTheDepositApi({required this.ref});
  final String _detail = '//Purchase/PayDeposit/get_document_pay_deposit';

  Future<DocumentPayTheDipositModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentPayTheDipositModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentPayTheDipositModel.fromJson(data);
    }
  }
}

final apiDocumentPayTheDeposit = Provider<DocumentPayTheDepositApi>((ref) => DocumentPayTheDepositApi(ref: ref));
