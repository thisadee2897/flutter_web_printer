import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/h_d_report_h_q_vat_postt_sale_model.dart';
import 'package:flutter_web_printer/screens/goodmeal_report_hq_vat_postt_sale/controllers/apis/get_company_data.dart';
class HDReportHQVatPosttSaleNotifier extends StateNotifier<AsyncValue<HDReportHQVatPosttSaleModel>> {
  HDReportHQVatPosttSaleNotifier(this.ref) : super(const AsyncValue.data(HDReportHQVatPosttSaleModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(HDReportHQVatPosttSaleModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      HDReportHQVatPosttSaleModel response = await ref.read(apiHDReportHQVatPosttSale).get({"company_id": id});
      return response;
    });
  }
}

final hdReportHQVatPosttSaleProvider =
    StateNotifierProvider<HDReportHQVatPosttSaleNotifier, AsyncValue<HDReportHQVatPosttSaleModel>>((ref) => HDReportHQVatPosttSaleNotifier(ref));
