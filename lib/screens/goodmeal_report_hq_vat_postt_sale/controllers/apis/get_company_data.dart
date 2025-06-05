import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/h_d_report_h_q_vat_postt_sale_model.dart';

class HDReportHQVatPosttSaleApi {
  final Ref ref;
  HDReportHQVatPosttSaleApi({required this.ref});
  final String _detail = 'get_company_data';

  Future<HDReportHQVatPosttSaleModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const HDReportHQVatPosttSaleModel();
    } else {
      Map<String, dynamic> data = List<Map<String, dynamic>>.from(response.data).first;
      return HDReportHQVatPosttSaleModel.fromJson(data);
    }
  }
}

final apiHDReportHQVatPosttSale = Provider<HDReportHQVatPosttSaleApi>((ref) => HDReportHQVatPosttSaleApi(ref: ref));
