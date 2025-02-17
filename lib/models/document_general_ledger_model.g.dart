// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_general_ledger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentGeneralLedgerModelImpl _$$DocumentGeneralLedgerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentGeneralLedgerModelImpl(
      glhdid: json['glhdid'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      gldocudate: json['gldocudate'] as String?,
      gldocuno: json['gldocuno'] as String?,
      glhdStatusId: json['glhd_status_id'] as num?,
      glhdRemark: json['glhd_remark'] as String?,
      glhdNetamount: json['glhd_netamount'] as String?,
      glhdDocutypeId: json['glhd_docutype_id'] as num?,
      fullname: json['fullname'] as String?,
      glhdDocutypeName: json['glhd_docutype_name'] as String?,
    );

Map<String, dynamic> _$$DocumentGeneralLedgerModelImplToJson(
        _$DocumentGeneralLedgerModelImpl instance) =>
    <String, dynamic>{
      'glhdid': instance.glhdid,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'gldocudate': instance.gldocudate,
      'gldocuno': instance.gldocuno,
      'glhd_status_id': instance.glhdStatusId,
      'glhd_remark': instance.glhdRemark,
      'glhd_netamount': instance.glhdNetamount,
      'glhd_docutype_id': instance.glhdDocutypeId,
      'fullname': instance.fullname,
      'glhd_docutype_name': instance.glhdDocutypeName,
    };
