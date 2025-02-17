
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_general_ledger_model.freezed.dart';
part 'document_general_ledger_model.g.dart';

@freezed
class DocumentGeneralLedgerModel with _$DocumentGeneralLedgerModel {
  const factory DocumentGeneralLedgerModel({
  @JsonKey(name: 'glhdid') String? glhdid,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'gldocudate') String? gldocudate,
  @JsonKey(name: 'gldocuno') String? gldocuno,
  @JsonKey(name: 'glhd_status_id') num? glhdStatusId,
  @JsonKey(name: 'glhd_remark') String? glhdRemark,
  @JsonKey(name: 'glhd_netamount') String? glhdNetamount,
  @JsonKey(name: 'glhd_docutype_id') num? glhdDocutypeId,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'glhd_docutype_name') String? glhdDocutypeName,
  }) = _DocumentGeneralLedgerModel;

  factory DocumentGeneralLedgerModel.fromJson(Map<String, dynamic> json) => _$DocumentGeneralLedgerModelFromJson(json);
}
