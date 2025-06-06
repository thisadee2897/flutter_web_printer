// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointModel _$PointModelFromJson(Map<String, dynamic> json) {
  return _PointModel.fromJson(json);
}

/// @nodoc
mixin _$PointModel {
  @JsonKey(name: 'point_name')
  String? get pointName => throw _privateConstructorUsedError;
  @JsonKey(name: 'point_value')
  String? get pointValue => throw _privateConstructorUsedError;

  /// Serializes this PointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointModelCopyWith<PointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointModelCopyWith<$Res> {
  factory $PointModelCopyWith(
          PointModel value, $Res Function(PointModel) then) =
      _$PointModelCopyWithImpl<$Res, PointModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'point_name') String? pointName,
      @JsonKey(name: 'point_value') String? pointValue});
}

/// @nodoc
class _$PointModelCopyWithImpl<$Res, $Val extends PointModel>
    implements $PointModelCopyWith<$Res> {
  _$PointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointName = freezed,
    Object? pointValue = freezed,
  }) {
    return _then(_value.copyWith(
      pointName: freezed == pointName
          ? _value.pointName
          : pointName // ignore: cast_nullable_to_non_nullable
              as String?,
      pointValue: freezed == pointValue
          ? _value.pointValue
          : pointValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointModelImplCopyWith<$Res>
    implements $PointModelCopyWith<$Res> {
  factory _$$PointModelImplCopyWith(
          _$PointModelImpl value, $Res Function(_$PointModelImpl) then) =
      __$$PointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'point_name') String? pointName,
      @JsonKey(name: 'point_value') String? pointValue});
}

/// @nodoc
class __$$PointModelImplCopyWithImpl<$Res>
    extends _$PointModelCopyWithImpl<$Res, _$PointModelImpl>
    implements _$$PointModelImplCopyWith<$Res> {
  __$$PointModelImplCopyWithImpl(
      _$PointModelImpl _value, $Res Function(_$PointModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointName = freezed,
    Object? pointValue = freezed,
  }) {
    return _then(_$PointModelImpl(
      pointName: freezed == pointName
          ? _value.pointName
          : pointName // ignore: cast_nullable_to_non_nullable
              as String?,
      pointValue: freezed == pointValue
          ? _value.pointValue
          : pointValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointModelImpl implements _PointModel {
  const _$PointModelImpl(
      {@JsonKey(name: 'point_name') this.pointName,
      @JsonKey(name: 'point_value') this.pointValue});

  factory _$PointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointModelImplFromJson(json);

  @override
  @JsonKey(name: 'point_name')
  final String? pointName;
  @override
  @JsonKey(name: 'point_value')
  final String? pointValue;

  @override
  String toString() {
    return 'PointModel(pointName: $pointName, pointValue: $pointValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointModelImpl &&
            (identical(other.pointName, pointName) ||
                other.pointName == pointName) &&
            (identical(other.pointValue, pointValue) ||
                other.pointValue == pointValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pointName, pointValue);

  /// Create a copy of PointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointModelImplCopyWith<_$PointModelImpl> get copyWith =>
      __$$PointModelImplCopyWithImpl<_$PointModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointModelImplToJson(
      this,
    );
  }
}

abstract class _PointModel implements PointModel {
  const factory _PointModel(
          {@JsonKey(name: 'point_name') final String? pointName,
          @JsonKey(name: 'point_value') final String? pointValue}) =
      _$PointModelImpl;

  factory _PointModel.fromJson(Map<String, dynamic> json) =
      _$PointModelImpl.fromJson;

  @override
  @JsonKey(name: 'point_name')
  String? get pointName;
  @override
  @JsonKey(name: 'point_value')
  String? get pointValue;

  /// Create a copy of PointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointModelImplCopyWith<_$PointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
