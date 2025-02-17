// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_inventory_requisition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentInventoryRequisitionModelImpl
    _$$DocumentInventoryRequisitionModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DocumentInventoryRequisitionModelImpl(
          requisitionHdId: json['requisition_hd_id'] as String?,
          companyId: json['master_company_id'] as String?,
          branchId: json['master_branch_id'] as String?,
          branchCode: json['master_branch_code'] as String?,
          branchName: json['master_branch_name'] as String?,
          requisitionHdDocudate: json['requisition_hd_docudate'] as String?,
          requisitionHdDocuno: json['requisition_hd_docuno'] as String?,
          requisitionHdStatusId: json['requisition_hd_status_id'] as num?,
          requisitionHdRemark: json['requisition_hd_remark'] as String?,
          fullname: json['fullname'] as String?,
          menuId: json['master_menu_id'] as String?,
        );

Map<String, dynamic> _$$DocumentInventoryRequisitionModelImplToJson(
        _$DocumentInventoryRequisitionModelImpl instance) =>
    <String, dynamic>{
      'requisition_hd_id': instance.requisitionHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_code': instance.branchCode,
      'master_branch_name': instance.branchName,
      'requisition_hd_docudate': instance.requisitionHdDocudate,
      'requisition_hd_docuno': instance.requisitionHdDocuno,
      'requisition_hd_status_id': instance.requisitionHdStatusId,
      'requisition_hd_remark': instance.requisitionHdRemark,
      'fullname': instance.fullname,
      'master_menu_id': instance.menuId,
    };
