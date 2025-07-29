// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      categoryName: json['category_name'] as String?,
      quantity: json['quantity'] as num?,
      amount: json['amount'] as num?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'is_cancel': instance.isCancel,
    };
