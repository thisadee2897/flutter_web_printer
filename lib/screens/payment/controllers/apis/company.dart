import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/models/company_model.dart';
import 'package:flutter_web_printer/utils/services/rest_api_service.dart';

class CompanyApi {
  final Ref ref;
  CompanyApi({required this.ref});
  final String _detail = '/Setting/ManageCompany/get_master_company';

  Future<CompanyModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    Map<String, dynamic> data = Map<String, dynamic>.from(response.data["data"][0]);
    return CompanyModel.fromJson(data);
  }
}

final apiCompany = Provider<CompanyApi>((ref) => CompanyApi(ref: ref));
