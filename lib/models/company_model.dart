
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_company_name') String? companyName,
  @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
  @JsonKey(name: 'master_company_prefix') String? companyPrefix,
  @JsonKey(name: 'master_company_tel') String? companyTel,
  @JsonKey(name: 'master_company_taxid') String? companyTaxid,
  @JsonKey(name: 'master_company_address') String? companyAddress,
  @JsonKey(name: 'master_company_district_id') String? companyDistrictId,
  @JsonKey(name: 'master_company_prefecture_id') String? companyPrefectureId,
  @JsonKey(name: 'master_company_province_id') String? companyProvinceId,
  @JsonKey(name: 'master_company_postcode_id') String? companyPostcodeId,
  @JsonKey(name: 'master_company_logo') String? companyLogo,
  @JsonKey(name: 'master_addr_district_name') String? addrDistrictName,
  @JsonKey(name: 'master_addr_prefecture_name') String? addrPrefectureName,
  @JsonKey(name: 'master_addr_province_name') String? addrProvinceName,
  @JsonKey(name: 'master_addr_postcode_code') String? addrPostcodeCode,
  @JsonKey(name: 'master_company_email') String? companyEmail,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}
