// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'h_d_report_h_q_vat_postt_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HDReportHQVatPosttSaleModelImpl _$$HDReportHQVatPosttSaleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HDReportHQVatPosttSaleModelImpl(
      companyId: json['master_company_id'] as num?,
      companyName: json['master_company_name'] as String?,
      companyTaxid: json['master_company_taxid'] as String?,
      companyAddr: json['master_company_addr'] as String?,
      addrDistrictId: json['master_addr_district_id'] as String?,
      addrPrefectureId: json['master_addr_prefecture_id'] as String?,
      addrProvinceId: json['master_addr_province_id'] as String?,
      addrPostcodeId: json['master_addr_postcode_id'] as String?,
      companyLogo: json['master_company_logo'] as String?,
      companyPrefix: json['master_company_prefix'] as String?,
      currencyId: json['master_currency_id'] as num?,
      companyTel: json['master_company_tel'] as String?,
      companyNameEng: json['master_company_name_eng'] as String?,
      companyLogoPath: json['master_company_logo_path'] as String?,
      companyAddrBuilding: json['master_company_addr_building'] as String?,
      companyAddrRoomNumber: json['master_company_addr_room_number'] as String?,
      companyAddrFloor: json['master_company_addr_floor'] as String?,
      companyAddrVillage: json['master_company_addr_village'] as String?,
      companyAddrHouseNo: json['master_company_addr_house_no'] as String?,
      companyAddrVillageNo: json['master_company_addr_village_no'] as num?,
      companyAddrAlleyLane: json['master_company_addr_alley_lane'] as String?,
      companyAddrRoad: json['master_company_addr_road'] as String?,
      packageId: json['package_id'] as String?,
      savetime: json['savetime'] as String?,
      shopName: json['shop_name'] as String?,
      organizationId: json['master_organization_id'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      branchsName: (json['branchs_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HDReportHQVatPosttSaleModelImplToJson(
        _$HDReportHQVatPosttSaleModelImpl instance) =>
    <String, dynamic>{
      'master_company_id': instance.companyId,
      'master_company_name': instance.companyName,
      'master_company_taxid': instance.companyTaxid,
      'master_company_addr': instance.companyAddr,
      'master_addr_district_id': instance.addrDistrictId,
      'master_addr_prefecture_id': instance.addrPrefectureId,
      'master_addr_province_id': instance.addrProvinceId,
      'master_addr_postcode_id': instance.addrPostcodeId,
      'master_company_logo': instance.companyLogo,
      'master_company_prefix': instance.companyPrefix,
      'master_currency_id': instance.currencyId,
      'master_company_tel': instance.companyTel,
      'master_company_name_eng': instance.companyNameEng,
      'master_company_logo_path': instance.companyLogoPath,
      'master_company_addr_building': instance.companyAddrBuilding,
      'master_company_addr_room_number': instance.companyAddrRoomNumber,
      'master_company_addr_floor': instance.companyAddrFloor,
      'master_company_addr_village': instance.companyAddrVillage,
      'master_company_addr_house_no': instance.companyAddrHouseNo,
      'master_company_addr_village_no': instance.companyAddrVillageNo,
      'master_company_addr_alley_lane': instance.companyAddrAlleyLane,
      'master_company_addr_road': instance.companyAddrRoad,
      'package_id': instance.packageId,
      'savetime': instance.savetime,
      'shop_name': instance.shopName,
      'master_organization_id': instance.organizationId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'branchs_name': instance.branchsName,
    };
