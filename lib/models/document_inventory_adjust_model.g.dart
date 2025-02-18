// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_inventory_adjust_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentInventoryAdjustModelImpl _$$DocumentInventoryAdjustModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentInventoryAdjustModelImpl(
      adjustHdId: json['adjust_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchCode: json['master_branch_code'] as String?,
      branchName: json['master_branch_name'] as String?,
      adjustHdDocudate: json['adjust_hd_docudate'] as String?,
      adjustHdDocuno: json['adjust_hd_docuno'] as String?,
      adjustHdStatusId: json['adjust_hd_status_id'] as num?,
      adjustHdRemark: json['adjust_hd_remark'] as String?,
      fullname: json['fullname'] as String?,
      menuId: json['master_menu_id'] as String?,
      adjustAmount: json['adjust_amount'] as String?,
    );

Map<String, dynamic> _$$DocumentInventoryAdjustModelImplToJson(
        _$DocumentInventoryAdjustModelImpl instance) =>
    <String, dynamic>{
      'adjust_hd_id': instance.adjustHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'adjust_hd_docudate': instance.adjustHdDocudate,
      'adjust_hd_docuno': instance.adjustHdDocuno,
      'adjust_hd_status_id': instance.adjustHdStatusId,
      'adjust_hd_remark': instance.adjustHdRemark,
      'fullname': instance.fullname,
      'master_menu_id': instance.menuId,
      'adjust_amount': instance.adjustAmount,
    };
