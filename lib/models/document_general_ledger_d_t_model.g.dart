// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_general_ledger_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentGeneralLedgerDTModelImpl _$$DocumentGeneralLedgerDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentGeneralLedgerDTModelImpl(
      gldtid: json['gldtid'] as String?,
      glhdid: json['glhdid'] as String?,
      gldtListno: json['gldt_listno'] as num?,
      accountId: json['master_account_id'] as String?,
      accountCode: json['master_account_code'] as String?,
      accountName: json['master_account_name'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchJobId: json['master_branch_job_id'] as String?,
      debitamnt: json['debitamnt'] as String?,
      creditamnt: json['creditamnt'] as String?,
      gldtRemark: json['gldt_remark'] as String?,
    );

Map<String, dynamic> _$$DocumentGeneralLedgerDTModelImplToJson(
        _$DocumentGeneralLedgerDTModelImpl instance) =>
    <String, dynamic>{
      'gldtid': instance.gldtid,
      'glhdid': instance.glhdid,
      'gldt_listno': instance.gldtListno,
      'master_account_id': instance.accountId,
      'master_account_code': instance.accountCode,
      'master_account_name': instance.accountName,
      'master_branch_id': instance.branchId,
      'master_branch_job_id': instance.branchJobId,
      'debitamnt': instance.debitamnt,
      'creditamnt': instance.creditamnt,
      'gldt_remark': instance.gldtRemark,
    };
