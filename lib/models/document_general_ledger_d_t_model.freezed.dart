// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_general_ledger_d_t_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentGeneralLedgerDTModel _$DocumentGeneralLedgerDTModelFromJson(
    Map<String, dynamic> json) {
  return _DocumentGeneralLedgerDTModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentGeneralLedgerDTModel {
  @JsonKey(name: 'gldtid')
  String? get gldtid => throw _privateConstructorUsedError;
  @JsonKey(name: 'glhdid')
  String? get glhdid => throw _privateConstructorUsedError;
  @JsonKey(name: 'gldt_listno')
  num? get gldtListno => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_account_id')
  String? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_account_code')
  String? get accountCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_account_name')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_id')
  String? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_job_id')
  String? get branchJobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'debitamnt')
  String? get debitamnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'creditamnt')
  String? get creditamnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'gldt_remark')
  String? get gldtRemark => throw _privateConstructorUsedError;

  /// Serializes this DocumentGeneralLedgerDTModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentGeneralLedgerDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentGeneralLedgerDTModelCopyWith<DocumentGeneralLedgerDTModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentGeneralLedgerDTModelCopyWith<$Res> {
  factory $DocumentGeneralLedgerDTModelCopyWith(
          DocumentGeneralLedgerDTModel value,
          $Res Function(DocumentGeneralLedgerDTModel) then) =
      _$DocumentGeneralLedgerDTModelCopyWithImpl<$Res,
          DocumentGeneralLedgerDTModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gldtid') String? gldtid,
      @JsonKey(name: 'glhdid') String? glhdid,
      @JsonKey(name: 'gldt_listno') num? gldtListno,
      @JsonKey(name: 'master_account_id') String? accountId,
      @JsonKey(name: 'master_account_code') String? accountCode,
      @JsonKey(name: 'master_account_name') String? accountName,
      @JsonKey(name: 'master_branch_id') String? branchId,
      @JsonKey(name: 'master_branch_job_id') String? branchJobId,
      @JsonKey(name: 'debitamnt') String? debitamnt,
      @JsonKey(name: 'creditamnt') String? creditamnt,
      @JsonKey(name: 'gldt_remark') String? gldtRemark});
}

/// @nodoc
class _$DocumentGeneralLedgerDTModelCopyWithImpl<$Res,
        $Val extends DocumentGeneralLedgerDTModel>
    implements $DocumentGeneralLedgerDTModelCopyWith<$Res> {
  _$DocumentGeneralLedgerDTModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentGeneralLedgerDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gldtid = freezed,
    Object? glhdid = freezed,
    Object? gldtListno = freezed,
    Object? accountId = freezed,
    Object? accountCode = freezed,
    Object? accountName = freezed,
    Object? branchId = freezed,
    Object? branchJobId = freezed,
    Object? debitamnt = freezed,
    Object? creditamnt = freezed,
    Object? gldtRemark = freezed,
  }) {
    return _then(_value.copyWith(
      gldtid: freezed == gldtid
          ? _value.gldtid
          : gldtid // ignore: cast_nullable_to_non_nullable
              as String?,
      glhdid: freezed == glhdid
          ? _value.glhdid
          : glhdid // ignore: cast_nullable_to_non_nullable
              as String?,
      gldtListno: freezed == gldtListno
          ? _value.gldtListno
          : gldtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchJobId: freezed == branchJobId
          ? _value.branchJobId
          : branchJobId // ignore: cast_nullable_to_non_nullable
              as String?,
      debitamnt: freezed == debitamnt
          ? _value.debitamnt
          : debitamnt // ignore: cast_nullable_to_non_nullable
              as String?,
      creditamnt: freezed == creditamnt
          ? _value.creditamnt
          : creditamnt // ignore: cast_nullable_to_non_nullable
              as String?,
      gldtRemark: freezed == gldtRemark
          ? _value.gldtRemark
          : gldtRemark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentGeneralLedgerDTModelImplCopyWith<$Res>
    implements $DocumentGeneralLedgerDTModelCopyWith<$Res> {
  factory _$$DocumentGeneralLedgerDTModelImplCopyWith(
          _$DocumentGeneralLedgerDTModelImpl value,
          $Res Function(_$DocumentGeneralLedgerDTModelImpl) then) =
      __$$DocumentGeneralLedgerDTModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gldtid') String? gldtid,
      @JsonKey(name: 'glhdid') String? glhdid,
      @JsonKey(name: 'gldt_listno') num? gldtListno,
      @JsonKey(name: 'master_account_id') String? accountId,
      @JsonKey(name: 'master_account_code') String? accountCode,
      @JsonKey(name: 'master_account_name') String? accountName,
      @JsonKey(name: 'master_branch_id') String? branchId,
      @JsonKey(name: 'master_branch_job_id') String? branchJobId,
      @JsonKey(name: 'debitamnt') String? debitamnt,
      @JsonKey(name: 'creditamnt') String? creditamnt,
      @JsonKey(name: 'gldt_remark') String? gldtRemark});
}

/// @nodoc
class __$$DocumentGeneralLedgerDTModelImplCopyWithImpl<$Res>
    extends _$DocumentGeneralLedgerDTModelCopyWithImpl<$Res,
        _$DocumentGeneralLedgerDTModelImpl>
    implements _$$DocumentGeneralLedgerDTModelImplCopyWith<$Res> {
  __$$DocumentGeneralLedgerDTModelImplCopyWithImpl(
      _$DocumentGeneralLedgerDTModelImpl _value,
      $Res Function(_$DocumentGeneralLedgerDTModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentGeneralLedgerDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gldtid = freezed,
    Object? glhdid = freezed,
    Object? gldtListno = freezed,
    Object? accountId = freezed,
    Object? accountCode = freezed,
    Object? accountName = freezed,
    Object? branchId = freezed,
    Object? branchJobId = freezed,
    Object? debitamnt = freezed,
    Object? creditamnt = freezed,
    Object? gldtRemark = freezed,
  }) {
    return _then(_$DocumentGeneralLedgerDTModelImpl(
      gldtid: freezed == gldtid
          ? _value.gldtid
          : gldtid // ignore: cast_nullable_to_non_nullable
              as String?,
      glhdid: freezed == glhdid
          ? _value.glhdid
          : glhdid // ignore: cast_nullable_to_non_nullable
              as String?,
      gldtListno: freezed == gldtListno
          ? _value.gldtListno
          : gldtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchJobId: freezed == branchJobId
          ? _value.branchJobId
          : branchJobId // ignore: cast_nullable_to_non_nullable
              as String?,
      debitamnt: freezed == debitamnt
          ? _value.debitamnt
          : debitamnt // ignore: cast_nullable_to_non_nullable
              as String?,
      creditamnt: freezed == creditamnt
          ? _value.creditamnt
          : creditamnt // ignore: cast_nullable_to_non_nullable
              as String?,
      gldtRemark: freezed == gldtRemark
          ? _value.gldtRemark
          : gldtRemark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentGeneralLedgerDTModelImpl
    implements _DocumentGeneralLedgerDTModel {
  const _$DocumentGeneralLedgerDTModelImpl(
      {@JsonKey(name: 'gldtid') this.gldtid,
      @JsonKey(name: 'glhdid') this.glhdid,
      @JsonKey(name: 'gldt_listno') this.gldtListno,
      @JsonKey(name: 'master_account_id') this.accountId,
      @JsonKey(name: 'master_account_code') this.accountCode,
      @JsonKey(name: 'master_account_name') this.accountName,
      @JsonKey(name: 'master_branch_id') this.branchId,
      @JsonKey(name: 'master_branch_job_id') this.branchJobId,
      @JsonKey(name: 'debitamnt') this.debitamnt,
      @JsonKey(name: 'creditamnt') this.creditamnt,
      @JsonKey(name: 'gldt_remark') this.gldtRemark});

  factory _$DocumentGeneralLedgerDTModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DocumentGeneralLedgerDTModelImplFromJson(json);

  @override
  @JsonKey(name: 'gldtid')
  final String? gldtid;
  @override
  @JsonKey(name: 'glhdid')
  final String? glhdid;
  @override
  @JsonKey(name: 'gldt_listno')
  final num? gldtListno;
  @override
  @JsonKey(name: 'master_account_id')
  final String? accountId;
  @override
  @JsonKey(name: 'master_account_code')
  final String? accountCode;
  @override
  @JsonKey(name: 'master_account_name')
  final String? accountName;
  @override
  @JsonKey(name: 'master_branch_id')
  final String? branchId;
  @override
  @JsonKey(name: 'master_branch_job_id')
  final String? branchJobId;
  @override
  @JsonKey(name: 'debitamnt')
  final String? debitamnt;
  @override
  @JsonKey(name: 'creditamnt')
  final String? creditamnt;
  @override
  @JsonKey(name: 'gldt_remark')
  final String? gldtRemark;

  @override
  String toString() {
    return 'DocumentGeneralLedgerDTModel(gldtid: $gldtid, glhdid: $glhdid, gldtListno: $gldtListno, accountId: $accountId, accountCode: $accountCode, accountName: $accountName, branchId: $branchId, branchJobId: $branchJobId, debitamnt: $debitamnt, creditamnt: $creditamnt, gldtRemark: $gldtRemark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentGeneralLedgerDTModelImpl &&
            (identical(other.gldtid, gldtid) || other.gldtid == gldtid) &&
            (identical(other.glhdid, glhdid) || other.glhdid == glhdid) &&
            (identical(other.gldtListno, gldtListno) ||
                other.gldtListno == gldtListno) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.branchJobId, branchJobId) ||
                other.branchJobId == branchJobId) &&
            (identical(other.debitamnt, debitamnt) ||
                other.debitamnt == debitamnt) &&
            (identical(other.creditamnt, creditamnt) ||
                other.creditamnt == creditamnt) &&
            (identical(other.gldtRemark, gldtRemark) ||
                other.gldtRemark == gldtRemark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gldtid,
      glhdid,
      gldtListno,
      accountId,
      accountCode,
      accountName,
      branchId,
      branchJobId,
      debitamnt,
      creditamnt,
      gldtRemark);

  /// Create a copy of DocumentGeneralLedgerDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentGeneralLedgerDTModelImplCopyWith<
          _$DocumentGeneralLedgerDTModelImpl>
      get copyWith => __$$DocumentGeneralLedgerDTModelImplCopyWithImpl<
          _$DocumentGeneralLedgerDTModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentGeneralLedgerDTModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentGeneralLedgerDTModel
    implements DocumentGeneralLedgerDTModel {
  const factory _DocumentGeneralLedgerDTModel(
          {@JsonKey(name: 'gldtid') final String? gldtid,
          @JsonKey(name: 'glhdid') final String? glhdid,
          @JsonKey(name: 'gldt_listno') final num? gldtListno,
          @JsonKey(name: 'master_account_id') final String? accountId,
          @JsonKey(name: 'master_account_code') final String? accountCode,
          @JsonKey(name: 'master_account_name') final String? accountName,
          @JsonKey(name: 'master_branch_id') final String? branchId,
          @JsonKey(name: 'master_branch_job_id') final String? branchJobId,
          @JsonKey(name: 'debitamnt') final String? debitamnt,
          @JsonKey(name: 'creditamnt') final String? creditamnt,
          @JsonKey(name: 'gldt_remark') final String? gldtRemark}) =
      _$DocumentGeneralLedgerDTModelImpl;

  factory _DocumentGeneralLedgerDTModel.fromJson(Map<String, dynamic> json) =
      _$DocumentGeneralLedgerDTModelImpl.fromJson;

  @override
  @JsonKey(name: 'gldtid')
  String? get gldtid;
  @override
  @JsonKey(name: 'glhdid')
  String? get glhdid;
  @override
  @JsonKey(name: 'gldt_listno')
  num? get gldtListno;
  @override
  @JsonKey(name: 'master_account_id')
  String? get accountId;
  @override
  @JsonKey(name: 'master_account_code')
  String? get accountCode;
  @override
  @JsonKey(name: 'master_account_name')
  String? get accountName;
  @override
  @JsonKey(name: 'master_branch_id')
  String? get branchId;
  @override
  @JsonKey(name: 'master_branch_job_id')
  String? get branchJobId;
  @override
  @JsonKey(name: 'debitamnt')
  String? get debitamnt;
  @override
  @JsonKey(name: 'creditamnt')
  String? get creditamnt;
  @override
  @JsonKey(name: 'gldt_remark')
  String? get gldtRemark;

  /// Create a copy of DocumentGeneralLedgerDTModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentGeneralLedgerDTModelImplCopyWith<
          _$DocumentGeneralLedgerDTModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
