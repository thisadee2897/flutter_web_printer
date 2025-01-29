// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      companyId: json['master_company_id'] as String?,
      companyName: json['master_company_name'] as String?,
      companyNameEng: json['master_company_name_eng'] as String?,
      companyPrefix: json['master_company_prefix'] as String?,
      companyTel: json['master_company_tel'] as String?,
      companyTaxid: json['master_company_taxid'] as String?,
      companyAddress: json['master_company_address'] as String?,
      companyDistrictId: json['master_company_district_id'] as String?,
      companyPrefectureId: json['master_company_prefecture_id'] as String?,
      companyProvinceId: json['master_company_province_id'] as String?,
      companyPostcodeId: json['master_company_postcode_id'] as String?,
      companyLogo: json['master_company_logo'] as String?,
      addrDistrictName: json['master_addr_district_name'] as String?,
      addrPrefectureName: json['master_addr_prefecture_name'] as String?,
      addrProvinceName: json['master_addr_province_name'] as String?,
      addrPostcodeCode: json['master_addr_postcode_code'] as String?,
      companyEmail: json['master_company_email'] as String?,
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'master_company_id': instance.companyId,
      'master_company_name': instance.companyName,
      'master_company_name_eng': instance.companyNameEng,
      'master_company_prefix': instance.companyPrefix,
      'master_company_tel': instance.companyTel,
      'master_company_taxid': instance.companyTaxid,
      'master_company_address': instance.companyAddress,
      'master_company_district_id': instance.companyDistrictId,
      'master_company_prefecture_id': instance.companyPrefectureId,
      'master_company_province_id': instance.companyProvinceId,
      'master_company_postcode_id': instance.companyPostcodeId,
      'master_company_logo': instance.companyLogo,
      'master_addr_district_name': instance.addrDistrictName,
      'master_addr_prefecture_name': instance.addrPrefectureName,
      'master_addr_province_name': instance.addrProvinceName,
      'master_addr_postcode_code': instance.addrPostcodeCode,
      'master_company_email': instance.companyEmail,
    };
