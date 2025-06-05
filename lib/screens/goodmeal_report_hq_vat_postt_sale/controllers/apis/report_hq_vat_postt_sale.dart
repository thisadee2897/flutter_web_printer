import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/detail_report_h_q_vat_postt_sale_model.dart';

class DetailReportHQVatPosttSaleApi {
  final Ref ref;
  DetailReportHQVatPosttSaleApi({required this.ref});
  final String _detail = 'report_hq_vat_postt_sale';

  Future<List<DetailReportHQVatPosttSaleModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DetailReportHQVatPosttSaleModel.fromJson(e)).toList();
  }
}

final apiDetailReportHQVatPosttSale = Provider<DetailReportHQVatPosttSaleApi>((ref) => DetailReportHQVatPosttSaleApi(ref: ref));
