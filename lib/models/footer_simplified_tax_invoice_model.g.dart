// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer_simplified_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooterSimplifiedTaxInvoiceModelImpl
    _$$FooterSimplifiedTaxInvoiceModelImplFromJson(Map<String, dynamic> json) =>
        _$FooterSimplifiedTaxInvoiceModelImpl(
          totalItems: json['total_items'] as num?,
          totalAmount: json['total_amount'] as num?,
          serviceCharge: json['service_charge'] as num?,
          discounts: (json['discounts'] as List<dynamic>?)
              ?.map((e) => DiscountModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          totalDiscount: json['total_discount'] as num?,
          vatIncluded: json['vat_included'] as num?,
          netAmount: json['net_amount'] as num?,
          cashReceived: json['cash_received'] as num?,
          change: json['change'] as num?,
          paymentMethods: (json['payment_methods'] as List<dynamic>?)
              ?.map(
                  (e) => PaymentMethodModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          totalCategoriesAmount: json['total_categories_amount'] as num?,
          points: (json['points'] as List<dynamic>?)
              ?.map((e) => PointModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FooterSimplifiedTaxInvoiceModelImplToJson(
        _$FooterSimplifiedTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_amount': instance.totalAmount,
      'service_charge': instance.serviceCharge,
      'discounts': instance.discounts,
      'total_discount': instance.totalDiscount,
      'vat_included': instance.vatIncluded,
      'net_amount': instance.netAmount,
      'cash_received': instance.cashReceived,
      'change': instance.change,
      'payment_methods': instance.paymentMethods,
      'categories': instance.categories,
      'total_categories_amount': instance.totalCategoriesAmount,
      'points': instance.points,
    };
