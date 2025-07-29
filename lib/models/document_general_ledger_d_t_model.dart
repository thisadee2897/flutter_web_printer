
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_general_ledger_d_t_model.freezed.dart';
part 'document_general_ledger_d_t_model.g.dart';

@freezed
class DocumentGeneralLedgerDTModel with _$DocumentGeneralLedgerDTModel {
  const factory DocumentGeneralLedgerDTModel({
  @JsonKey(name: 'gldtid') String? gldtid,
  @JsonKey(name: 'glhdid') String? glhdid,
  @JsonKey(name: 'gldt_listno') num? gldtListno,
  @JsonKey(name: 'master_account_id') String? accountId,
  @JsonKey(name: 'master_account_code') String? accountCode,
  @JsonKey(name: 'master_account_name') String? accountName,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_job_id') String? branchJobId,
  @JsonKey(name: 'debitamnt') String? debitamnt,
  @JsonKey(name: 'creditamnt') String? creditamnt,
  @JsonKey(name: 'gldt_remark') String? gldtRemark,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentGeneralLedgerDTModel;

  factory DocumentGeneralLedgerDTModel.fromJson(Map<String, dynamic> json) => _$DocumentGeneralLedgerDTModelFromJson(json);
}
