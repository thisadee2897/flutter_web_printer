
import 'package:flutter_web_printer/models/category_model.dart';
import 'package:flutter_web_printer/models/discount_model.dart';
import 'package:flutter_web_printer/models/payment_method_model.dart';
import 'package:flutter_web_printer/models/point_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'footer_simplified_tax_invoice_model.freezed.dart';
part 'footer_simplified_tax_invoice_model.g.dart';

@freezed
class FooterSimplifiedTaxInvoiceModel with _$FooterSimplifiedTaxInvoiceModel {
  const factory FooterSimplifiedTaxInvoiceModel({
  @JsonKey(name: 'total_items') num? totalItems,
  @JsonKey(name: 'total_amount') num? totalAmount,
  @JsonKey(name: 'service_charge') num? serviceCharge,
  @JsonKey(name: 'discounts') List<DiscountModel>? discounts,
  @JsonKey(name: 'total_discount') num? totalDiscount,
  @JsonKey(name: 'vat_included') num? vatIncluded,
  @JsonKey(name: 'net_amount') num? netAmount,
  @JsonKey(name: 'cash_received') num? cashReceived,
  @JsonKey(name: 'change') num? change,
  @JsonKey(name: 'payment_methods') List<PaymentMethodModel>? paymentMethods,
  @JsonKey(name: 'categories') List<CategoryModel>? categories,
  @JsonKey(name: 'total_categories_amount') num? totalCategoriesAmount,
  @JsonKey(name: 'points') List<PointModel>? points,
  }) = _FooterSimplifiedTaxInvoiceModel;

  factory FooterSimplifiedTaxInvoiceModel.fromJson(Map<String, dynamic> json) => _$FooterSimplifiedTaxInvoiceModelFromJson(json);
}
