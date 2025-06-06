
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_tax_invoice_model.freezed.dart';
part 'detail_tax_invoice_model.g.dart';

@freezed
class DetailTaxInvoiceModel with _$DetailTaxInvoiceModel {
  const factory DetailTaxInvoiceModel({
  @JsonKey(name: 'list_no') num? listNo,
  @JsonKey(name: 'item_name') String? itemName,
  @JsonKey(name: 'unit_price') num? unitPrice,
  @JsonKey(name: 'quantity') num? quantity,
  @JsonKey(name: 'amount') num? amount,
  }) = _DetailTaxInvoiceModel;

  factory DetailTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$DetailTaxInvoiceModelFromJson(json);
}
