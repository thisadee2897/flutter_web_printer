
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_purchase_request_model.freezed.dart';
part 'document_purchase_request_model.g.dart';

@freezed
class DocumentPurchaseRequestModel with _$DocumentPurchaseRequestModel {
  const factory DocumentPurchaseRequestModel({
  @JsonKey(name: 'purchaserequest_hd_id') String? purchaserequestHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'purchaserequest_hd_docudate') String? purchaserequestHdDocudate,
  @JsonKey(name: 'purchaserequest_hd_docuno') String? purchaserequestHdDocuno,
  @JsonKey(name: 'purchaserequest_hd_status_id') num? purchaserequestHdStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'purchaserequest_hd_remark') String? purchaserequestHdRemark,
  @JsonKey(name: 'purchaserequest_hd_amount') String? purchaserequestHdAmount,
  @JsonKey(name: 'purchaserequest_hd_discountamount') String? purchaserequestHdDiscountamount,
  @JsonKey(name: 'purchaserequest_hd_netamount') String? purchaserequestHdNetamount,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentPurchaseRequestModel;

  factory DocumentPurchaseRequestModel.fromJson(Map<String, dynamic> json) => _$DocumentPurchaseRequestModelFromJson(json);
}
