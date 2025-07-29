
import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_simplified_tax_invoice_model.freezed.dart';
part 'header_simplified_tax_invoice_model.g.dart';

@freezed
class HeaderSimplifiedTaxInvoiceModel with _$HeaderSimplifiedTaxInvoiceModel {
  const factory HeaderSimplifiedTaxInvoiceModel({
  @JsonKey(name: 'title') String? title,
  @JsonKey(name: 'company_logo_image_network') String? companyLogoImageNetwork,
  @JsonKey(name: 'company_name') String? companyName,
  @JsonKey(name: 'company_address') String? companyAddress,
  @JsonKey(name: 'company_phone_number') String? companyPhoneNumber,
  @JsonKey(name: 'company_tax_id') String? companyTaxId,
  @JsonKey(name: 'employee_name') String? employeeName,
  @JsonKey(name: 'customer_name') String? customerName,
  @JsonKey(name: 'table_number') String? tableNumber,
  @JsonKey(name: 'docu_no') String? docuNo,
  @JsonKey(name: 'docu_date') String? docuDate,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _HeaderSimplifiedTaxInvoiceModel;

  factory HeaderSimplifiedTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$HeaderSimplifiedTaxInvoiceModelFromJson(json);
}
