// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Branch2Impl _$$Branch2ImplFromJson(Map<String, dynamic> json) =>
    _$Branch2Impl(
      branchNumber: json['master_branch_number'] as String?,
      isSelected: json['is_selected'] as bool?,
    );

Map<String, dynamic> _$$Branch2ImplToJson(_$Branch2Impl instance) =>
    <String, dynamic>{
      'master_branch_number': instance.branchNumber,
      'is_selected': instance.isSelected,
    };
