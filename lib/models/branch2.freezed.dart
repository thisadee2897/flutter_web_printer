// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Branch2 _$Branch2FromJson(Map<String, dynamic> json) {
  return _Branch2.fromJson(json);
}

/// @nodoc
mixin _$Branch2 {
  @JsonKey(name: 'master_branch_number')
  String? get branchNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_selected')
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Serializes this Branch2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Branch2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Branch2CopyWith<Branch2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Branch2CopyWith<$Res> {
  factory $Branch2CopyWith(Branch2 value, $Res Function(Branch2) then) =
      _$Branch2CopyWithImpl<$Res, Branch2>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_branch_number') String? branchNumber,
      @JsonKey(name: 'is_selected') bool? isSelected});
}

/// @nodoc
class _$Branch2CopyWithImpl<$Res, $Val extends Branch2>
    implements $Branch2CopyWith<$Res> {
  _$Branch2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Branch2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchNumber = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      branchNumber: freezed == branchNumber
          ? _value.branchNumber
          : branchNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Branch2ImplCopyWith<$Res> implements $Branch2CopyWith<$Res> {
  factory _$$Branch2ImplCopyWith(
          _$Branch2Impl value, $Res Function(_$Branch2Impl) then) =
      __$$Branch2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_branch_number') String? branchNumber,
      @JsonKey(name: 'is_selected') bool? isSelected});
}

/// @nodoc
class __$$Branch2ImplCopyWithImpl<$Res>
    extends _$Branch2CopyWithImpl<$Res, _$Branch2Impl>
    implements _$$Branch2ImplCopyWith<$Res> {
  __$$Branch2ImplCopyWithImpl(
      _$Branch2Impl _value, $Res Function(_$Branch2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Branch2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchNumber = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$Branch2Impl(
      branchNumber: freezed == branchNumber
          ? _value.branchNumber
          : branchNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Branch2Impl implements _Branch2 {
  const _$Branch2Impl(
      {@JsonKey(name: 'master_branch_number') this.branchNumber,
      @JsonKey(name: 'is_selected') this.isSelected});

  factory _$Branch2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Branch2ImplFromJson(json);

  @override
  @JsonKey(name: 'master_branch_number')
  final String? branchNumber;
  @override
  @JsonKey(name: 'is_selected')
  final bool? isSelected;

  @override
  String toString() {
    return 'Branch2(branchNumber: $branchNumber, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Branch2Impl &&
            (identical(other.branchNumber, branchNumber) ||
                other.branchNumber == branchNumber) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, branchNumber, isSelected);

  /// Create a copy of Branch2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Branch2ImplCopyWith<_$Branch2Impl> get copyWith =>
      __$$Branch2ImplCopyWithImpl<_$Branch2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Branch2ImplToJson(
      this,
    );
  }
}

abstract class _Branch2 implements Branch2 {
  const factory _Branch2(
      {@JsonKey(name: 'master_branch_number') final String? branchNumber,
      @JsonKey(name: 'is_selected') final bool? isSelected}) = _$Branch2Impl;

  factory _Branch2.fromJson(Map<String, dynamic> json) = _$Branch2Impl.fromJson;

  @override
  @JsonKey(name: 'master_branch_number')
  String? get branchNumber;
  @override
  @JsonKey(name: 'is_selected')
  bool? get isSelected;

  /// Create a copy of Branch2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Branch2ImplCopyWith<_$Branch2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
