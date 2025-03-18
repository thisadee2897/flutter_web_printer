// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earning_statement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarningStatementModel _$EarningStatementModelFromJson(
    Map<String, dynamic> json) {
  return _EarningStatementModel.fromJson(json);
}

/// @nodoc
mixin _$EarningStatementModel {
  @JsonKey(name: 'listno')
  num? get listno => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_account_category_name')
  String? get accountCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_account_category_sub_name')
  String? get accountCategorySubName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_id')
  String? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_account_category_id')
  num? get accountCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum_profit')
  String? get sumProfit => throw _privateConstructorUsedError;

  /// Serializes this EarningStatementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningStatementModelCopyWith<EarningStatementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningStatementModelCopyWith<$Res> {
  factory $EarningStatementModelCopyWith(EarningStatementModel value,
          $Res Function(EarningStatementModel) then) =
      _$EarningStatementModelCopyWithImpl<$Res, EarningStatementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'listno') num? listno,
      @JsonKey(name: 'master_account_category_name')
      String? accountCategoryName,
      @JsonKey(name: 'master_account_category_sub_name')
      String? accountCategorySubName,
      @JsonKey(name: 'master_company_id') String? companyId,
      @JsonKey(name: 'master_account_category_id') num? accountCategoryId,
      @JsonKey(name: 'sum_profit') String? sumProfit});
}

/// @nodoc
class _$EarningStatementModelCopyWithImpl<$Res,
        $Val extends EarningStatementModel>
    implements $EarningStatementModelCopyWith<$Res> {
  _$EarningStatementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listno = freezed,
    Object? accountCategoryName = freezed,
    Object? accountCategorySubName = freezed,
    Object? companyId = freezed,
    Object? accountCategoryId = freezed,
    Object? sumProfit = freezed,
  }) {
    return _then(_value.copyWith(
      listno: freezed == listno
          ? _value.listno
          : listno // ignore: cast_nullable_to_non_nullable
              as num?,
      accountCategoryName: freezed == accountCategoryName
          ? _value.accountCategoryName
          : accountCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCategorySubName: freezed == accountCategorySubName
          ? _value.accountCategorySubName
          : accountCategorySubName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCategoryId: freezed == accountCategoryId
          ? _value.accountCategoryId
          : accountCategoryId // ignore: cast_nullable_to_non_nullable
              as num?,
      sumProfit: freezed == sumProfit
          ? _value.sumProfit
          : sumProfit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningStatementModelImplCopyWith<$Res>
    implements $EarningStatementModelCopyWith<$Res> {
  factory _$$EarningStatementModelImplCopyWith(
          _$EarningStatementModelImpl value,
          $Res Function(_$EarningStatementModelImpl) then) =
      __$$EarningStatementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'listno') num? listno,
      @JsonKey(name: 'master_account_category_name')
      String? accountCategoryName,
      @JsonKey(name: 'master_account_category_sub_name')
      String? accountCategorySubName,
      @JsonKey(name: 'master_company_id') String? companyId,
      @JsonKey(name: 'master_account_category_id') num? accountCategoryId,
      @JsonKey(name: 'sum_profit') String? sumProfit});
}

/// @nodoc
class __$$EarningStatementModelImplCopyWithImpl<$Res>
    extends _$EarningStatementModelCopyWithImpl<$Res,
        _$EarningStatementModelImpl>
    implements _$$EarningStatementModelImplCopyWith<$Res> {
  __$$EarningStatementModelImplCopyWithImpl(_$EarningStatementModelImpl _value,
      $Res Function(_$EarningStatementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listno = freezed,
    Object? accountCategoryName = freezed,
    Object? accountCategorySubName = freezed,
    Object? companyId = freezed,
    Object? accountCategoryId = freezed,
    Object? sumProfit = freezed,
  }) {
    return _then(_$EarningStatementModelImpl(
      listno: freezed == listno
          ? _value.listno
          : listno // ignore: cast_nullable_to_non_nullable
              as num?,
      accountCategoryName: freezed == accountCategoryName
          ? _value.accountCategoryName
          : accountCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCategorySubName: freezed == accountCategorySubName
          ? _value.accountCategorySubName
          : accountCategorySubName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCategoryId: freezed == accountCategoryId
          ? _value.accountCategoryId
          : accountCategoryId // ignore: cast_nullable_to_non_nullable
              as num?,
      sumProfit: freezed == sumProfit
          ? _value.sumProfit
          : sumProfit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningStatementModelImpl implements _EarningStatementModel {
  const _$EarningStatementModelImpl(
      {@JsonKey(name: 'listno') this.listno,
      @JsonKey(name: 'master_account_category_name') this.accountCategoryName,
      @JsonKey(name: 'master_account_category_sub_name')
      this.accountCategorySubName,
      @JsonKey(name: 'master_company_id') this.companyId,
      @JsonKey(name: 'master_account_category_id') this.accountCategoryId,
      @JsonKey(name: 'sum_profit') this.sumProfit});

  factory _$EarningStatementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningStatementModelImplFromJson(json);

  @override
  @JsonKey(name: 'listno')
  final num? listno;
  @override
  @JsonKey(name: 'master_account_category_name')
  final String? accountCategoryName;
  @override
  @JsonKey(name: 'master_account_category_sub_name')
  final String? accountCategorySubName;
  @override
  @JsonKey(name: 'master_company_id')
  final String? companyId;
  @override
  @JsonKey(name: 'master_account_category_id')
  final num? accountCategoryId;
  @override
  @JsonKey(name: 'sum_profit')
  final String? sumProfit;

  @override
  String toString() {
    return 'EarningStatementModel(listno: $listno, accountCategoryName: $accountCategoryName, accountCategorySubName: $accountCategorySubName, companyId: $companyId, accountCategoryId: $accountCategoryId, sumProfit: $sumProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningStatementModelImpl &&
            (identical(other.listno, listno) || other.listno == listno) &&
            (identical(other.accountCategoryName, accountCategoryName) ||
                other.accountCategoryName == accountCategoryName) &&
            (identical(other.accountCategorySubName, accountCategorySubName) ||
                other.accountCategorySubName == accountCategorySubName) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.accountCategoryId, accountCategoryId) ||
                other.accountCategoryId == accountCategoryId) &&
            (identical(other.sumProfit, sumProfit) ||
                other.sumProfit == sumProfit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, listno, accountCategoryName,
      accountCategorySubName, companyId, accountCategoryId, sumProfit);

  /// Create a copy of EarningStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningStatementModelImplCopyWith<_$EarningStatementModelImpl>
      get copyWith => __$$EarningStatementModelImplCopyWithImpl<
          _$EarningStatementModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningStatementModelImplToJson(
      this,
    );
  }
}

abstract class _EarningStatementModel implements EarningStatementModel {
  const factory _EarningStatementModel(
      {@JsonKey(name: 'listno') final num? listno,
      @JsonKey(name: 'master_account_category_name')
      final String? accountCategoryName,
      @JsonKey(name: 'master_account_category_sub_name')
      final String? accountCategorySubName,
      @JsonKey(name: 'master_company_id') final String? companyId,
      @JsonKey(name: 'master_account_category_id') final num? accountCategoryId,
      @JsonKey(name: 'sum_profit')
      final String? sumProfit}) = _$EarningStatementModelImpl;

  factory _EarningStatementModel.fromJson(Map<String, dynamic> json) =
      _$EarningStatementModelImpl.fromJson;

  @override
  @JsonKey(name: 'listno')
  num? get listno;
  @override
  @JsonKey(name: 'master_account_category_name')
  String? get accountCategoryName;
  @override
  @JsonKey(name: 'master_account_category_sub_name')
  String? get accountCategorySubName;
  @override
  @JsonKey(name: 'master_company_id')
  String? get companyId;
  @override
  @JsonKey(name: 'master_account_category_id')
  num? get accountCategoryId;
  @override
  @JsonKey(name: 'sum_profit')
  String? get sumProfit;

  /// Create a copy of EarningStatementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningStatementModelImplCopyWith<_$EarningStatementModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
