
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_purchase_order_model.freezed.dart';
part 'document_purchase_order_model.g.dart';

@freezed
class DocumentPurchaseOrderModel with _$DocumentPurchaseOrderModel {
  const factory DocumentPurchaseOrderModel({
  @JsonKey(name: 'purchaseorder_hd_id') String? purchaseorderHdId,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_branch_code') String? branchCode,
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'purchaseorder_hd_docudate') String? purchaseorderHdDocudate,
  @JsonKey(name: 'purchaseorder_hd_docuno') String? purchaseorderHdDocuno,
  @JsonKey(name: 'purchaseorder_hd_status_id') num? purchaseorderHdStatusId,
  @JsonKey(name: 'master_contact_id') String? contactId,
  @JsonKey(name: 'master_contact_code') String? contactCode,
  @JsonKey(name: 'master_contact_name') String? contactName,
  @JsonKey(name: 'purchaseorder_hd_remark') String? purchaseorderHdRemark,
  @JsonKey(name: 'master_vat_group_id') num? vatGroupId,
  @JsonKey(name: 'master_vat_group_name') String? vatGroupName,
  @JsonKey(name: 'purchaseorder_hd_amount') String? purchaseorderHdAmount,
  @JsonKey(name: 'purchaseorder_hd_totalexcludeamnt') String? purchaseorderHdTotalexcludeamnt,
  @JsonKey(name: 'purchaseorder_hd_totalincludeamnt') String? purchaseorderHdTotalincludeamnt,
  @JsonKey(name: 'purchaseorder_hd_baseamnt') String? purchaseorderHdBaseamnt,
  @JsonKey(name: 'purchaseorder_hd_vatamnt') String? purchaseorderHdVatamnt,
  @JsonKey(name: 'purchaseorder_hd_discount_amount') String? purchaseorderHdDiscountAmount,
  @JsonKey(name: 'purchaseorder_hd_netamnt') String? purchaseorderHdNetamnt,
  @JsonKey(name: 'master_vat_rate') String? vatRate,
  @JsonKey(name: 'fullname') String? fullname,
  @JsonKey(name: 'master_contact_address') String? contactAddress,
  @JsonKey(name: 'master_contact_tel') String? contactTel,
  @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DocumentPurchaseOrderModel;

  factory DocumentPurchaseOrderModel.fromJson(Map<String, dynamic> json) => _$DocumentPurchaseOrderModelFromJson(json);
}
