
import 'package:flutter_web_printer/models/branch_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_full_tax_invoice_model.freezed.dart';
part 'header_full_tax_invoice_model.g.dart';

@freezed
class HeaderFullTaxInvoiceModel with _$HeaderFullTaxInvoiceModel {
  const factory HeaderFullTaxInvoiceModel({
  @JsonKey(name: 'title') String? title,
  @JsonKey(name: 'company_logo_image_network') String? companyLogoImageNetwork,
  @JsonKey(name: 'company_name') String? companyName,
  @JsonKey(name: 'company_address') String? companyAddress,
  @JsonKey(name: 'company_phone_number') String? companyPhoneNumber,
  @JsonKey(name: 'company_tax_id') String? companyTaxId,
  @JsonKey(name: 'customer_name') String? customerName,
  @JsonKey(name: 'customer_address') String? customerAddress,
  @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
  @JsonKey(name: 'customer_tax_id') String? customerTaxId,
  @JsonKey(name: 'docu_no') String? docuNo,
  @JsonKey(name: 'docu_date') String? docuDate,
  @JsonKey(name: 'branchs') List<BranchModel>? branchs,
  }) = _HeaderFullTaxInvoiceModel;

  factory HeaderFullTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$HeaderFullTaxInvoiceModelFromJson(json);
}
