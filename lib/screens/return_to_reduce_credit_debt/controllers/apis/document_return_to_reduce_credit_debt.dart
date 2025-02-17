import 'package:flutter_web_printer/apps/app_exports.dart';

class DocumentReturnToReduceCreditDebtApi {
  final Ref ref;
  DocumentReturnToReduceCreditDebtApi({required this.ref});
  final String _detail = '/Purchase/Creditnote/get_document_creditnote';
  Future<DocumentCreditNoteModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentCreditNoteModel();
    } else {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return DocumentCreditNoteModel.fromJson(data);
    }
  }
}

final apiDocumentReturnToReduceCreditDebt = Provider<DocumentReturnToReduceCreditDebtApi>((ref) => DocumentReturnToReduceCreditDebtApi(ref: ref));
