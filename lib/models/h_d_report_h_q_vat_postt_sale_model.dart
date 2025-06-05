
import 'package:freezed_annotation/freezed_annotation.dart';
part 'h_d_report_h_q_vat_postt_sale_model.freezed.dart';
part 'h_d_report_h_q_vat_postt_sale_model.g.dart';

@freezed
class HDReportHQVatPosttSaleModel with _$HDReportHQVatPosttSaleModel {
  const factory HDReportHQVatPosttSaleModel({
  // @JsonKey(name: 'master_company_id') num? companyId,
  @JsonKey(name: 'master_company_name') String? companyName,
  @JsonKey(name: 'master_company_taxid') String? companyTaxid,
  // @JsonKey(name: 'master_company_addr') String? companyAddr,
  // @JsonKey(name: 'master_addr_district_id') String? addrDistrictId,
  // @JsonKey(name: 'master_addr_prefecture_id') String? addrPrefectureId,
  // @JsonKey(name: 'master_addr_province_id') String? addrProvinceId,
  // @JsonKey(name: 'master_addr_postcode_id') String? addrPostcodeId,
  // @JsonKey(name: 'master_company_logo') String? companyLogo,
  // @JsonKey(name: 'master_company_prefix') String? companyPrefix,
  // @JsonKey(name: 'master_currency_id') num? currencyId,
  // @JsonKey(name: 'master_company_tel') String? companyTel,
  // @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
  // @JsonKey(name: 'master_company_logo_path') String? companyLogoPath,
  // @JsonKey(name: 'master_company_addr_building') String? companyAddrBuilding,
  // @JsonKey(name: 'master_company_addr_room_number') String? companyAddrRoomNumber,
  // @JsonKey(name: 'master_company_addr_floor') String? companyAddrFloor,
  // @JsonKey(name: 'master_company_addr_village') String? companyAddrVillage,
  // @JsonKey(name: 'master_company_addr_house_no') String? companyAddrHouseNo,
  // @JsonKey(name: 'master_company_addr_village_no') num? companyAddrVillageNo,
  // @JsonKey(name: 'master_company_addr_alley_lane') String? companyAddrAlleyLane,
  // @JsonKey(name: 'master_company_addr_road') String? companyAddrRoad,
  // @JsonKey(name: 'package_id') String? packageId,
  // @JsonKey(name: 'savetime') String? savetime,
  // @JsonKey(name: 'shop_name') String? shopName,
  // @JsonKey(name: 'master_organization_id') String? organizationId,
  @JsonKey(name: 'start_date') String? startDate,
  @JsonKey(name: 'end_date') String? endDate,
  @JsonKey(name: 'branchs_name') List<String>? branchsName,
  }) = _HDReportHQVatPosttSaleModel;

  factory HDReportHQVatPosttSaleModel.fromJson(Map<String, dynamic> json) => _$HDReportHQVatPosttSaleModelFromJson(json);
}
