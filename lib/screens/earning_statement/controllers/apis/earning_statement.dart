import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/earning_statement_model.dart';

class EarningStatementDTApi {
  final Ref ref;
  EarningStatementDTApi({required this.ref});
  final String _detail = '/GeneralLedger/Journal/get_report_earning_statement';

  Future<List<EarningStatementModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => EarningStatementModel.fromJson(e)).toList();
  }
}

final apiEarningStatementDT = Provider<EarningStatementDTApi>((ref) => EarningStatementDTApi(ref: ref));
