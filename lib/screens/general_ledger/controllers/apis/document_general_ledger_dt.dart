import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentGeneralLedgerDTApi {
  final Ref ref;
  DocumentGeneralLedgerDTApi({required this.ref});
  final String _detail = '/GeneralLedger/Journal/get_document_gldt';

  Future<List<DocumentGeneralLedgerDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentGeneralLedgerDTModel.fromJson(e)).toList();
  }
}

final apiDocumentGeneralLedgerDT = Provider<DocumentGeneralLedgerDTApi>((ref) => DocumentGeneralLedgerDTApi(ref: ref));
