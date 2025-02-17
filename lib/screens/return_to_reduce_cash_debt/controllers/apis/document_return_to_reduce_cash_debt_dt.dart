import 'package:flutter_web_printer/apps/app_exports.dart';


class DocumentReturnToReduceCashDebtDTApi {
  final Ref ref;
  DocumentReturnToReduceCashDebtDTApi({required this.ref});
  final String _detail = '/Purchase/Creditnote/get_document_creditnote_dt';
  Future<List<DocumentCreditNoteDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentCreditNoteDTModel.fromJson(e)).toList();
  }
}

final apiDocumentReturnToReduceCashDebtDT = Provider<DocumentReturnToReduceCashDebtDTApi>((ref) => DocumentReturnToReduceCashDebtDTApi(ref: ref));
