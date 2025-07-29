
import 'package:freezed_annotation/freezed_annotation.dart';

part 'footer_full_tax_invoice_model.freezed.dart';
part 'footer_full_tax_invoice_model.g.dart';

@freezed
class FooterFullTaxInvoiceModel with _$FooterFullTaxInvoiceModel {
  const factory FooterFullTaxInvoiceModel({
  @JsonKey(name: 'payment_method') String? paymentMethod,
  @JsonKey(name: 'vat_exempt') num? vatExempt,
  @JsonKey(name: 'vat_included') num? vatIncluded,
  @JsonKey(name: 'vat_amount') num? vatAmount,
  @JsonKey(name: 'withholding_tax') num? withholdingTax,
  @JsonKey(name: 'net_amount') num? netAmount,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _FooterFullTaxInvoiceModel;

  factory FooterFullTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$FooterFullTaxInvoiceModelFromJson(json);
}
