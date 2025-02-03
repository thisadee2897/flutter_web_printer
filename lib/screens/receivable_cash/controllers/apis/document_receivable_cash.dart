import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/route_helper.dart';
import 'package:flutter_web_printer/models/document_receivable_cash_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class DocumentReceivableCashApi {
  final Ref ref;
  DocumentReceivableCashApi({required this.ref});
  final String _detail = '/Receivable/Receivable/get_document_receivable';

  Future<DocumentReceivableCashModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentReceivableCashModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentReceivableCashModel.fromJson(data);
    }
  }
}

final apiDocumentReceivableCash = Provider<DocumentReceivableCashApi>((ref) => DocumentReceivableCashApi(ref: ref));
