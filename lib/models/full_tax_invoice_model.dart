
import 'package:flutter_web_printer/models/detail_tax_invoice_model.dart';
import 'package:flutter_web_printer/models/footer_full_tax_invoice_model.dart';
import 'package:flutter_web_printer/models/header_full_tax_invoice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_tax_invoice_model.freezed.dart';
part 'full_tax_invoice_model.g.dart';

@freezed
class FullTaxInvoiceModel with _$FullTaxInvoiceModel {
  const factory FullTaxInvoiceModel({
  @JsonKey(name: 'original') bool? original,
  @JsonKey(name: 'copy') bool? copy,
  @JsonKey(name: 'header') HeaderFullTaxInvoiceModel? header,
  @JsonKey(name: 'details') List<DetailTaxInvoiceModel>? details,
  @JsonKey(name: 'footer') FooterFullTaxInvoiceModel? footer,
  }) = _FullTaxInvoiceModel;

  factory FullTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$FullTaxInvoiceModelFromJson(json);
}
