import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentBillApi {
  final Ref ref;
  DocumentBillApi({required this.ref});
  final String _detail = '/Receivable/Bill/get_document_bill';

  Future<DocumentBillModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentBillModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentBillModel.fromJson(data);
    }
  }
}

final apiDocumentBill = Provider<DocumentBillApi>((ref) => DocumentBillApi(ref: ref));
