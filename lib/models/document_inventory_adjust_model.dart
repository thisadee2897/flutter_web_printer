
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_inventory_adjust_model.freezed.dart';
part 'document_inventory_adjust_model.g.dart';

@freezed
class DocumentInventoryAdjustModel with _$DocumentInventoryAdjustModel {
  const factory DocumentInventoryAdjustModel({
  @JsonKey(name: 'adjust_hd_id') String? adjustHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'adjust_hd_docudate') String? adjustHdDocudate,
  @JsonKey(name: 'adjust_hd_docuno') String? adjustHdDocuno,
  @JsonKey(name: 'adjust_hd_status_id') num? adjustHdStatusId,
  @JsonKey(name: 'adjust_hd_remark') String? adjustHdRemark,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_menu_id') String? menuId,
  @JsonKey(name: 'adjust_amount') String? adjustAmount,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentInventoryAdjustModel;

  factory DocumentInventoryAdjustModel.fromJson(Map<String, dynamic> json) => _$DocumentInventoryAdjustModelFromJson(json);
}
