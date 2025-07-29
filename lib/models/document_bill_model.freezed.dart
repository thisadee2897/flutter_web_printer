// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentBillModel _$DocumentBillModelFromJson(Map<String, dynamic> json) {
  return _DocumentBillModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentBillModel {
  @JsonKey(name: 'bill_hd_id')
  String? get billHdId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_id')
  String? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_id')
  String? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_branch_name')
  String? get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_hd_docudate')
  String? get billHdDocudate => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_hd_docuno')
  String? get billHdDocuno => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_hd_status_id')
  num? get billHdStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_contact_id')
  String? get contactId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_contact_code')
  String? get contactCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_contact_name')
  String? get contactName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_hd_due_date')
  String? get billHdDueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_hd_remark')
  String? get billHdRemark => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_hd_amount')
  String? get billHdAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullname')
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_contact_address')
  String? get contactAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_contact_tel')
  String? get contactTel => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_contact_taxid')
  String? get contactTaxid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancel')
  bool? get isCancel => throw _privateConstructorUsedError;

  /// Serializes this DocumentBillModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentBillModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentBillModelCopyWith<DocumentBillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentBillModelCopyWith<$Res> {
  factory $DocumentBillModelCopyWith(
          DocumentBillModel value, $Res Function(DocumentBillModel) then) =
      _$DocumentBillModelCopyWithImpl<$Res, DocumentBillModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bill_hd_id') String? billHdId,
      @JsonKey(name: 'master_company_id') String? companyId,
      @JsonKey(name: 'master_branch_id') String? branchId,
      @JsonKey(name: 'master_branch_name') String? branchName,
      @JsonKey(name: 'bill_hd_docudate') String? billHdDocudate,
      @JsonKey(name: 'bill_hd_docuno') String? billHdDocuno,
      @JsonKey(name: 'bill_hd_status_id') num? billHdStatusId,
      @JsonKey(name: 'master_contact_id') String? contactId,
      @JsonKey(name: 'master_contact_code') String? contactCode,
      @JsonKey(name: 'master_contact_name') String? contactName,
      @JsonKey(name: 'bill_hd_due_date') String? billHdDueDate,
      @JsonKey(name: 'bill_hd_remark') String? billHdRemark,
      @JsonKey(name: 'bill_hd_amount') String? billHdAmount,
      @JsonKey(name: 'fullname') String? fullname,
      @JsonKey(name: 'master_contact_address') String? contactAddress,
      @JsonKey(name: 'master_contact_tel') String? contactTel,
      @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class _$DocumentBillModelCopyWithImpl<$Res, $Val extends DocumentBillModel>
    implements $DocumentBillModelCopyWith<$Res> {
  _$DocumentBillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentBillModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billHdId = freezed,
    Object? companyId = freezed,
    Object? branchId = freezed,
    Object? branchName = freezed,
    Object? billHdDocudate = freezed,
    Object? billHdDocuno = freezed,
    Object? billHdStatusId = freezed,
    Object? contactId = freezed,
    Object? contactCode = freezed,
    Object? contactName = freezed,
    Object? billHdDueDate = freezed,
    Object? billHdRemark = freezed,
    Object? billHdAmount = freezed,
    Object? fullname = freezed,
    Object? contactAddress = freezed,
    Object? contactTel = freezed,
    Object? contactTaxid = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_value.copyWith(
      billHdId: freezed == billHdId
          ? _value.billHdId
          : billHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: freezed == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdDocudate: freezed == billHdDocudate
          ? _value.billHdDocudate
          : billHdDocudate // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdDocuno: freezed == billHdDocuno
          ? _value.billHdDocuno
          : billHdDocuno // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdStatusId: freezed == billHdStatusId
          ? _value.billHdStatusId
          : billHdStatusId // ignore: cast_nullable_to_non_nullable
              as num?,
      contactId: freezed == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactCode: freezed == contactCode
          ? _value.contactCode
          : contactCode // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdDueDate: freezed == billHdDueDate
          ? _value.billHdDueDate
          : billHdDueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdRemark: freezed == billHdRemark
          ? _value.billHdRemark
          : billHdRemark // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdAmount: freezed == billHdAmount
          ? _value.billHdAmount
          : billHdAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: freezed == contactAddress
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactTel: freezed == contactTel
          ? _value.contactTel
          : contactTel // ignore: cast_nullable_to_non_nullable
              as String?,
      contactTaxid: freezed == contactTaxid
          ? _value.contactTaxid
          : contactTaxid // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentBillModelImplCopyWith<$Res>
    implements $DocumentBillModelCopyWith<$Res> {
  factory _$$DocumentBillModelImplCopyWith(_$DocumentBillModelImpl value,
          $Res Function(_$DocumentBillModelImpl) then) =
      __$$DocumentBillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bill_hd_id') String? billHdId,
      @JsonKey(name: 'master_company_id') String? companyId,
      @JsonKey(name: 'master_branch_id') String? branchId,
      @JsonKey(name: 'master_branch_name') String? branchName,
      @JsonKey(name: 'bill_hd_docudate') String? billHdDocudate,
      @JsonKey(name: 'bill_hd_docuno') String? billHdDocuno,
      @JsonKey(name: 'bill_hd_status_id') num? billHdStatusId,
      @JsonKey(name: 'master_contact_id') String? contactId,
      @JsonKey(name: 'master_contact_code') String? contactCode,
      @JsonKey(name: 'master_contact_name') String? contactName,
      @JsonKey(name: 'bill_hd_due_date') String? billHdDueDate,
      @JsonKey(name: 'bill_hd_remark') String? billHdRemark,
      @JsonKey(name: 'bill_hd_amount') String? billHdAmount,
      @JsonKey(name: 'fullname') String? fullname,
      @JsonKey(name: 'master_contact_address') String? contactAddress,
      @JsonKey(name: 'master_contact_tel') String? contactTel,
      @JsonKey(name: 'master_contact_taxid') String? contactTaxid,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class __$$DocumentBillModelImplCopyWithImpl<$Res>
    extends _$DocumentBillModelCopyWithImpl<$Res, _$DocumentBillModelImpl>
    implements _$$DocumentBillModelImplCopyWith<$Res> {
  __$$DocumentBillModelImplCopyWithImpl(_$DocumentBillModelImpl _value,
      $Res Function(_$DocumentBillModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentBillModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billHdId = freezed,
    Object? companyId = freezed,
    Object? branchId = freezed,
    Object? branchName = freezed,
    Object? billHdDocudate = freezed,
    Object? billHdDocuno = freezed,
    Object? billHdStatusId = freezed,
    Object? contactId = freezed,
    Object? contactCode = freezed,
    Object? contactName = freezed,
    Object? billHdDueDate = freezed,
    Object? billHdRemark = freezed,
    Object? billHdAmount = freezed,
    Object? fullname = freezed,
    Object? contactAddress = freezed,
    Object? contactTel = freezed,
    Object? contactTaxid = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_$DocumentBillModelImpl(
      billHdId: freezed == billHdId
          ? _value.billHdId
          : billHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: freezed == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdDocudate: freezed == billHdDocudate
          ? _value.billHdDocudate
          : billHdDocudate // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdDocuno: freezed == billHdDocuno
          ? _value.billHdDocuno
          : billHdDocuno // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdStatusId: freezed == billHdStatusId
          ? _value.billHdStatusId
          : billHdStatusId // ignore: cast_nullable_to_non_nullable
              as num?,
      contactId: freezed == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactCode: freezed == contactCode
          ? _value.contactCode
          : contactCode // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdDueDate: freezed == billHdDueDate
          ? _value.billHdDueDate
          : billHdDueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdRemark: freezed == billHdRemark
          ? _value.billHdRemark
          : billHdRemark // ignore: cast_nullable_to_non_nullable
              as String?,
      billHdAmount: freezed == billHdAmount
          ? _value.billHdAmount
          : billHdAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: freezed == contactAddress
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactTel: freezed == contactTel
          ? _value.contactTel
          : contactTel // ignore: cast_nullable_to_non_nullable
              as String?,
      contactTaxid: freezed == contactTaxid
          ? _value.contactTaxid
          : contactTaxid // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentBillModelImpl implements _DocumentBillModel {
  const _$DocumentBillModelImpl(
      {@JsonKey(name: 'bill_hd_id') this.billHdId,
      @JsonKey(name: 'master_company_id') this.companyId,
      @JsonKey(name: 'master_branch_id') this.branchId,
      @JsonKey(name: 'master_branch_name') this.branchName,
      @JsonKey(name: 'bill_hd_docudate') this.billHdDocudate,
      @JsonKey(name: 'bill_hd_docuno') this.billHdDocuno,
      @JsonKey(name: 'bill_hd_status_id') this.billHdStatusId,
      @JsonKey(name: 'master_contact_id') this.contactId,
      @JsonKey(name: 'master_contact_code') this.contactCode,
      @JsonKey(name: 'master_contact_name') this.contactName,
      @JsonKey(name: 'bill_hd_due_date') this.billHdDueDate,
      @JsonKey(name: 'bill_hd_remark') this.billHdRemark,
      @JsonKey(name: 'bill_hd_amount') this.billHdAmount,
      @JsonKey(name: 'fullname') this.fullname,
      @JsonKey(name: 'master_contact_address') this.contactAddress,
      @JsonKey(name: 'master_contact_tel') this.contactTel,
      @JsonKey(name: 'master_contact_taxid') this.contactTaxid,
      @JsonKey(name: 'is_cancel') this.isCancel});

  factory _$DocumentBillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentBillModelImplFromJson(json);

  @override
  @JsonKey(name: 'bill_hd_id')
  final String? billHdId;
  @override
  @JsonKey(name: 'master_company_id')
  final String? companyId;
  @override
  @JsonKey(name: 'master_branch_id')
  final String? branchId;
  @override
  @JsonKey(name: 'master_branch_name')
  final String? branchName;
  @override
  @JsonKey(name: 'bill_hd_docudate')
  final String? billHdDocudate;
  @override
  @JsonKey(name: 'bill_hd_docuno')
  final String? billHdDocuno;
  @override
  @JsonKey(name: 'bill_hd_status_id')
  final num? billHdStatusId;
  @override
  @JsonKey(name: 'master_contact_id')
  final String? contactId;
  @override
  @JsonKey(name: 'master_contact_code')
  final String? contactCode;
  @override
  @JsonKey(name: 'master_contact_name')
  final String? contactName;
  @override
  @JsonKey(name: 'bill_hd_due_date')
  final String? billHdDueDate;
  @override
  @JsonKey(name: 'bill_hd_remark')
  final String? billHdRemark;
  @override
  @JsonKey(name: 'bill_hd_amount')
  final String? billHdAmount;
  @override
  @JsonKey(name: 'fullname')
  final String? fullname;
  @override
  @JsonKey(name: 'master_contact_address')
  final String? contactAddress;
  @override
  @JsonKey(name: 'master_contact_tel')
  final String? contactTel;
  @override
  @JsonKey(name: 'master_contact_taxid')
  final String? contactTaxid;
  @override
  @JsonKey(name: 'is_cancel')
  final bool? isCancel;

  @override
  String toString() {
    return 'DocumentBillModel(billHdId: $billHdId, companyId: $companyId, branchId: $branchId, branchName: $branchName, billHdDocudate: $billHdDocudate, billHdDocuno: $billHdDocuno, billHdStatusId: $billHdStatusId, contactId: $contactId, contactCode: $contactCode, contactName: $contactName, billHdDueDate: $billHdDueDate, billHdRemark: $billHdRemark, billHdAmount: $billHdAmount, fullname: $fullname, contactAddress: $contactAddress, contactTel: $contactTel, contactTaxid: $contactTaxid, isCancel: $isCancel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentBillModelImpl &&
            (identical(other.billHdId, billHdId) ||
                other.billHdId == billHdId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.billHdDocudate, billHdDocudate) ||
                other.billHdDocudate == billHdDocudate) &&
            (identical(other.billHdDocuno, billHdDocuno) ||
                other.billHdDocuno == billHdDocuno) &&
            (identical(other.billHdStatusId, billHdStatusId) ||
                other.billHdStatusId == billHdStatusId) &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.contactCode, contactCode) ||
                other.contactCode == contactCode) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.billHdDueDate, billHdDueDate) ||
                other.billHdDueDate == billHdDueDate) &&
            (identical(other.billHdRemark, billHdRemark) ||
                other.billHdRemark == billHdRemark) &&
            (identical(other.billHdAmount, billHdAmount) ||
                other.billHdAmount == billHdAmount) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.contactAddress, contactAddress) ||
                other.contactAddress == contactAddress) &&
            (identical(other.contactTel, contactTel) ||
                other.contactTel == contactTel) &&
            (identical(other.contactTaxid, contactTaxid) ||
                other.contactTaxid == contactTaxid) &&
            (identical(other.isCancel, isCancel) ||
                other.isCancel == isCancel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      billHdId,
      companyId,
      branchId,
      branchName,
      billHdDocudate,
      billHdDocuno,
      billHdStatusId,
      contactId,
      contactCode,
      contactName,
      billHdDueDate,
      billHdRemark,
      billHdAmount,
      fullname,
      contactAddress,
      contactTel,
      contactTaxid,
      isCancel);

  /// Create a copy of DocumentBillModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentBillModelImplCopyWith<_$DocumentBillModelImpl> get copyWith =>
      __$$DocumentBillModelImplCopyWithImpl<_$DocumentBillModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentBillModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentBillModel implements DocumentBillModel {
  const factory _DocumentBillModel(
          {@JsonKey(name: 'bill_hd_id') final String? billHdId,
          @JsonKey(name: 'master_company_id') final String? companyId,
          @JsonKey(name: 'master_branch_id') final String? branchId,
          @JsonKey(name: 'master_branch_name') final String? branchName,
          @JsonKey(name: 'bill_hd_docudate') final String? billHdDocudate,
          @JsonKey(name: 'bill_hd_docuno') final String? billHdDocuno,
          @JsonKey(name: 'bill_hd_status_id') final num? billHdStatusId,
          @JsonKey(name: 'master_contact_id') final String? contactId,
          @JsonKey(name: 'master_contact_code') final String? contactCode,
          @JsonKey(name: 'master_contact_name') final String? contactName,
          @JsonKey(name: 'bill_hd_due_date') final String? billHdDueDate,
          @JsonKey(name: 'bill_hd_remark') final String? billHdRemark,
          @JsonKey(name: 'bill_hd_amount') final String? billHdAmount,
          @JsonKey(name: 'fullname') final String? fullname,
          @JsonKey(name: 'master_contact_address') final String? contactAddress,
          @JsonKey(name: 'master_contact_tel') final String? contactTel,
          @JsonKey(name: 'master_contact_taxid') final String? contactTaxid,
          @JsonKey(name: 'is_cancel') final bool? isCancel}) =
      _$DocumentBillModelImpl;

  factory _DocumentBillModel.fromJson(Map<String, dynamic> json) =
      _$DocumentBillModelImpl.fromJson;

  @override
  @JsonKey(name: 'bill_hd_id')
  String? get billHdId;
  @override
  @JsonKey(name: 'master_company_id')
  String? get companyId;
  @override
  @JsonKey(name: 'master_branch_id')
  String? get branchId;
  @override
  @JsonKey(name: 'master_branch_name')
  String? get branchName;
  @override
  @JsonKey(name: 'bill_hd_docudate')
  String? get billHdDocudate;
  @override
  @JsonKey(name: 'bill_hd_docuno')
  String? get billHdDocuno;
  @override
  @JsonKey(name: 'bill_hd_status_id')
  num? get billHdStatusId;
  @override
  @JsonKey(name: 'master_contact_id')
  String? get contactId;
  @override
  @JsonKey(name: 'master_contact_code')
  String? get contactCode;
  @override
  @JsonKey(name: 'master_contact_name')
  String? get contactName;
  @override
  @JsonKey(name: 'bill_hd_due_date')
  String? get billHdDueDate;
  @override
  @JsonKey(name: 'bill_hd_remark')
  String? get billHdRemark;
  @override
  @JsonKey(name: 'bill_hd_amount')
  String? get billHdAmount;
  @override
  @JsonKey(name: 'fullname')
  String? get fullname;
  @override
  @JsonKey(name: 'master_contact_address')
  String? get contactAddress;
  @override
  @JsonKey(name: 'master_contact_tel')
  String? get contactTel;
  @override
  @JsonKey(name: 'master_contact_taxid')
  String? get contactTaxid;
  @override
  @JsonKey(name: 'is_cancel')
  bool? get isCancel;

  /// Create a copy of DocumentBillModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentBillModelImplCopyWith<_$DocumentBillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
