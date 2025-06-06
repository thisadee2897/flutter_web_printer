// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_tax_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTaxInvoiceModelImpl _$$DetailTaxInvoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTaxInvoiceModelImpl(
      listNo: json['list_no'] as num?,
      itemName: json['item_name'] as String?,
      unitPrice: json['unit_price'] as num?,
      quantity: json['quantity'] as num?,
      amount: json['amount'] as num?,
    );

Map<String, dynamic> _$$DetailTaxInvoiceModelImplToJson(
        _$DetailTaxInvoiceModelImpl instance) =>
    <String, dynamic>{
      'list_no': instance.listNo,
      'item_name': instance.itemName,
      'unit_price': instance.unitPrice,
      'quantity': instance.quantity,
      'amount': instance.amount,
    };
