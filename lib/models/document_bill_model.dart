
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_bill_model.freezed.dart';
part 'document_bill_model.g.dart';

@freezed
class DocumentBillModel with _$DocumentBillModel {
  const factory DocumentBillModel({
  @JsonKey(name: 'bill_hd_id') String? billHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'bill_hd_docudate') String? billHdDocudate,
  @JsonKey(name: 'bill_hd_docuno') String? billHdDocuno,
  @JsonKey(name: 'bill_hd_status_id') num? billHdStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'bill_hd_due_date') String? billHdDueDate,
  @JsonKey(name: 'bill_hd_remark') String? billHdRemark,
  @JsonKey(name: 'bill_hd_amount') String? billHdAmount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentBillModel;

  factory DocumentBillModel.fromJson(Map<String, dynamic> json) => _$DocumentBillModelFromJson(json);
}
