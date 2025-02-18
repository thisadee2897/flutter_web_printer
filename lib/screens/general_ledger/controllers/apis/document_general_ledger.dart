import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentGeneralLedgerApi {
  final Ref ref;
  DocumentGeneralLedgerApi({required this.ref});
  final String _detail = '/GeneralLedger/Journal/get_document_gl';

  Future<DocumentGeneralLedgerModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentGeneralLedgerModel();
    } else {
      try {
        Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
        return DocumentGeneralLedgerModel.fromJson(data);
      } catch (err, stx) {
        if (kDebugMode) print(err);
        if (kDebugMode) print(stx);
        return const DocumentGeneralLedgerModel();
      }
    }
  }
}

final apiDocumentGeneralLedger = Provider<DocumentGeneralLedgerApi>((ref) => DocumentGeneralLedgerApi(ref: ref));
