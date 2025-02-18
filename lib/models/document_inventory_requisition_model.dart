
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_inventory_requisition_model.freezed.dart';
part 'document_inventory_requisition_model.g.dart';

@freezed
class DocumentInventoryRequisitionModel with _$DocumentInventoryRequisitionModel {
  const factory DocumentInventoryRequisitionModel({
  @JsonKey(name: 'requisition_hd_id') String? requisitionHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'requisition_hd_docudate') String? requisitionHdDocudate,
  @JsonKey(name: 'requisition_hd_docuno') String? requisitionHdDocuno,
  @JsonKey(name: 'requisition_hd_status_id') num? requisitionHdStatusId,
  @JsonKey(name: 'requisition_hd_remark') String? requisitionHdRemark,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_menu_id') String? menuId,
  @JsonKey(name: 'requisition_amount') String? requisitionAmount,
  }) = _DocumentInventoryRequisitionModel;

  factory DocumentInventoryRequisitionModel.fromJson(Map<String, dynamic> json) => _$DocumentInventoryRequisitionModelFromJson(json);
}
