
import 'package:flutter_web_printer/models/detail_tax_invoice_model.dart';
import 'package:flutter_web_printer/models/footer_simplified_tax_invoice_model.dart';
import 'package:flutter_web_printer/models/header_simplified_tax_invoice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_tax_invoice_model.freezed.dart';
part 'simplified_tax_invoice_model.g.dart';

@freezed
class SimplifiedTaxInvoiceModel with _$SimplifiedTaxInvoiceModel {
  const factory SimplifiedTaxInvoiceModel({
  @JsonKey(name: 'header') HeaderSimplifiedTaxInvoiceModel? header,
  @JsonKey(name: 'details') List<DetailTaxInvoiceModel>? details,
  @JsonKey(name: 'footer') FooterSimplifiedTaxInvoiceModel? footer,
  }) = _SimplifiedTaxInvoiceModel;

  factory SimplifiedTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$SimplifiedTaxInvoiceModelFromJson(json);
}
