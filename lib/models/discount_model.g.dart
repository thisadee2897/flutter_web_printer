// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      discountName: json['discount_name'] as String?,
      discountValue: json['discount_value'] as num?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'discount_name': instance.discountName,
      'discount_value': instance.discountValue,
      'is_cancel': instance.isCancel,
    };
