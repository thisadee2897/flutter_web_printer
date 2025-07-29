// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointModelImpl _$$PointModelImplFromJson(Map<String, dynamic> json) =>
    _$PointModelImpl(
      pointName: json['point_name'] as String?,
      pointValue: json['point_value'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$PointModelImplToJson(_$PointModelImpl instance) =>
    <String, dynamic>{
      'point_name': instance.pointName,
      'point_value': instance.pointValue,
      'is_cancel': instance.isCancel,
    };
