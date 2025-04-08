import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';

class DocumentStickerSaleCashDTApi {
  final Ref ref;
  DocumentStickerSaleCashDTApi({required this.ref});
  final String _detail = '/Saledata/Sale/get_document_get_sale_dt';

  Future<List<DocumentSaleDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentSaleDTModel.fromJson(e)).toList();
  }
}

final apiDocumentStickerSaleCashDT = Provider<DocumentStickerSaleCashDTApi>((ref) => DocumentStickerSaleCashDTApi(ref: ref));
