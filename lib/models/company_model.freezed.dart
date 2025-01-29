// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  @JsonKey(name: 'master_company_id')
  String? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_name_eng')
  String? get companyNameEng => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_prefix')
  String? get companyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_tel')
  String? get companyTel => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_taxid')
  String? get companyTaxid => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_address')
  String? get companyAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_district_id')
  String? get companyDistrictId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_prefecture_id')
  String? get companyPrefectureId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_province_id')
  String? get companyProvinceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_postcode_id')
  String? get companyPostcodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_logo')
  String? get companyLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_district_name')
  String? get addrDistrictName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_prefecture_name')
  String? get addrPrefectureName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_province_name')
  String? get addrProvinceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_addr_postcode_code')
  String? get addrPostcodeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_email')
  String? get companyEmail => throw _privateConstructorUsedError;

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_company_id') String? companyId,
      @JsonKey(name: 'master_company_name') String? companyName,
      @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
      @JsonKey(name: 'master_company_prefix') String? companyPrefix,
      @JsonKey(name: 'master_company_tel') String? companyTel,
      @JsonKey(name: 'master_company_taxid') String? companyTaxid,
      @JsonKey(name: 'master_company_address') String? companyAddress,
      @JsonKey(name: 'master_company_district_id') String? companyDistrictId,
      @JsonKey(name: 'master_company_prefecture_id')
      String? companyPrefectureId,
      @JsonKey(name: 'master_company_province_id') String? companyProvinceId,
      @JsonKey(name: 'master_company_postcode_id') String? companyPostcodeId,
      @JsonKey(name: 'master_company_logo') String? companyLogo,
      @JsonKey(name: 'master_addr_district_name') String? addrDistrictName,
      @JsonKey(name: 'master_addr_prefecture_name') String? addrPrefectureName,
      @JsonKey(name: 'master_addr_province_name') String? addrProvinceName,
      @JsonKey(name: 'master_addr_postcode_code') String? addrPostcodeCode,
      @JsonKey(name: 'master_company_email') String? companyEmail});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = freezed,
    Object? companyName = freezed,
    Object? companyNameEng = freezed,
    Object? companyPrefix = freezed,
    Object? companyTel = freezed,
    Object? companyTaxid = freezed,
    Object? companyAddress = freezed,
    Object? companyDistrictId = freezed,
    Object? companyPrefectureId = freezed,
    Object? companyProvinceId = freezed,
    Object? companyPostcodeId = freezed,
    Object? companyLogo = freezed,
    Object? addrDistrictName = freezed,
    Object? addrPrefectureName = freezed,
    Object? addrProvinceName = freezed,
    Object? addrPostcodeCode = freezed,
    Object? companyEmail = freezed,
  }) {
    return _then(_value.copyWith(
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyNameEng: freezed == companyNameEng
          ? _value.companyNameEng
          : companyNameEng // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPrefix: freezed == companyPrefix
          ? _value.companyPrefix
          : companyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTel: freezed == companyTel
          ? _value.companyTel
          : companyTel // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxid: freezed == companyTaxid
          ? _value.companyTaxid
          : companyTaxid // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: freezed == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      companyDistrictId: freezed == companyDistrictId
          ? _value.companyDistrictId
          : companyDistrictId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPrefectureId: freezed == companyPrefectureId
          ? _value.companyPrefectureId
          : companyPrefectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyProvinceId: freezed == companyProvinceId
          ? _value.companyProvinceId
          : companyProvinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPostcodeId: freezed == companyPostcodeId
          ? _value.companyPostcodeId
          : companyPostcodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogo: freezed == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      addrDistrictName: freezed == addrDistrictName
          ? _value.addrDistrictName
          : addrDistrictName // ignore: cast_nullable_to_non_nullable
              as String?,
      addrPrefectureName: freezed == addrPrefectureName
          ? _value.addrPrefectureName
          : addrPrefectureName // ignore: cast_nullable_to_non_nullable
              as String?,
      addrProvinceName: freezed == addrProvinceName
          ? _value.addrProvinceName
          : addrProvinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      addrPostcodeCode: freezed == addrPostcodeCode
          ? _value.addrPostcodeCode
          : addrPostcodeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      companyEmail: freezed == companyEmail
          ? _value.companyEmail
          : companyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
          _$CompanyModelImpl value, $Res Function(_$CompanyModelImpl) then) =
      __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_company_id') String? companyId,
      @JsonKey(name: 'master_company_name') String? companyName,
      @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
      @JsonKey(name: 'master_company_prefix') String? companyPrefix,
      @JsonKey(name: 'master_company_tel') String? companyTel,
      @JsonKey(name: 'master_company_taxid') String? companyTaxid,
      @JsonKey(name: 'master_company_address') String? companyAddress,
      @JsonKey(name: 'master_company_district_id') String? companyDistrictId,
      @JsonKey(name: 'master_company_prefecture_id')
      String? companyPrefectureId,
      @JsonKey(name: 'master_company_province_id') String? companyProvinceId,
      @JsonKey(name: 'master_company_postcode_id') String? companyPostcodeId,
      @JsonKey(name: 'master_company_logo') String? companyLogo,
      @JsonKey(name: 'master_addr_district_name') String? addrDistrictName,
      @JsonKey(name: 'master_addr_prefecture_name') String? addrPrefectureName,
      @JsonKey(name: 'master_addr_province_name') String? addrProvinceName,
      @JsonKey(name: 'master_addr_postcode_code') String? addrPostcodeCode,
      @JsonKey(name: 'master_company_email') String? companyEmail});
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
      _$CompanyModelImpl _value, $Res Function(_$CompanyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = freezed,
    Object? companyName = freezed,
    Object? companyNameEng = freezed,
    Object? companyPrefix = freezed,
    Object? companyTel = freezed,
    Object? companyTaxid = freezed,
    Object? companyAddress = freezed,
    Object? companyDistrictId = freezed,
    Object? companyPrefectureId = freezed,
    Object? companyProvinceId = freezed,
    Object? companyPostcodeId = freezed,
    Object? companyLogo = freezed,
    Object? addrDistrictName = freezed,
    Object? addrPrefectureName = freezed,
    Object? addrProvinceName = freezed,
    Object? addrPostcodeCode = freezed,
    Object? companyEmail = freezed,
  }) {
    return _then(_$CompanyModelImpl(
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyNameEng: freezed == companyNameEng
          ? _value.companyNameEng
          : companyNameEng // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPrefix: freezed == companyPrefix
          ? _value.companyPrefix
          : companyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTel: freezed == companyTel
          ? _value.companyTel
          : companyTel // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxid: freezed == companyTaxid
          ? _value.companyTaxid
          : companyTaxid // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: freezed == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      companyDistrictId: freezed == companyDistrictId
          ? _value.companyDistrictId
          : companyDistrictId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPrefectureId: freezed == companyPrefectureId
          ? _value.companyPrefectureId
          : companyPrefectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyProvinceId: freezed == companyProvinceId
          ? _value.companyProvinceId
          : companyProvinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPostcodeId: freezed == companyPostcodeId
          ? _value.companyPostcodeId
          : companyPostcodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogo: freezed == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      addrDistrictName: freezed == addrDistrictName
          ? _value.addrDistrictName
          : addrDistrictName // ignore: cast_nullable_to_non_nullable
              as String?,
      addrPrefectureName: freezed == addrPrefectureName
          ? _value.addrPrefectureName
          : addrPrefectureName // ignore: cast_nullable_to_non_nullable
              as String?,
      addrProvinceName: freezed == addrProvinceName
          ? _value.addrProvinceName
          : addrProvinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      addrPostcodeCode: freezed == addrPostcodeCode
          ? _value.addrPostcodeCode
          : addrPostcodeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      companyEmail: freezed == companyEmail
          ? _value.companyEmail
          : companyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyModelImpl implements _CompanyModel {
  const _$CompanyModelImpl(
      {@JsonKey(name: 'master_company_id') this.companyId,
      @JsonKey(name: 'master_company_name') this.companyName,
      @JsonKey(name: 'master_company_name_eng') this.companyNameEng,
      @JsonKey(name: 'master_company_prefix') this.companyPrefix,
      @JsonKey(name: 'master_company_tel') this.companyTel,
      @JsonKey(name: 'master_company_taxid') this.companyTaxid,
      @JsonKey(name: 'master_company_address') this.companyAddress,
      @JsonKey(name: 'master_company_district_id') this.companyDistrictId,
      @JsonKey(name: 'master_company_prefecture_id') this.companyPrefectureId,
      @JsonKey(name: 'master_company_province_id') this.companyProvinceId,
      @JsonKey(name: 'master_company_postcode_id') this.companyPostcodeId,
      @JsonKey(name: 'master_company_logo') this.companyLogo,
      @JsonKey(name: 'master_addr_district_name') this.addrDistrictName,
      @JsonKey(name: 'master_addr_prefecture_name') this.addrPrefectureName,
      @JsonKey(name: 'master_addr_province_name') this.addrProvinceName,
      @JsonKey(name: 'master_addr_postcode_code') this.addrPostcodeCode,
      @JsonKey(name: 'master_company_email') this.companyEmail});

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_company_id')
  final String? companyId;
  @override
  @JsonKey(name: 'master_company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'master_company_name_eng')
  final String? companyNameEng;
  @override
  @JsonKey(name: 'master_company_prefix')
  final String? companyPrefix;
  @override
  @JsonKey(name: 'master_company_tel')
  final String? companyTel;
  @override
  @JsonKey(name: 'master_company_taxid')
  final String? companyTaxid;
  @override
  @JsonKey(name: 'master_company_address')
  final String? companyAddress;
  @override
  @JsonKey(name: 'master_company_district_id')
  final String? companyDistrictId;
  @override
  @JsonKey(name: 'master_company_prefecture_id')
  final String? companyPrefectureId;
  @override
  @JsonKey(name: 'master_company_province_id')
  final String? companyProvinceId;
  @override
  @JsonKey(name: 'master_company_postcode_id')
  final String? companyPostcodeId;
  @override
  @JsonKey(name: 'master_company_logo')
  final String? companyLogo;
  @override
  @JsonKey(name: 'master_addr_district_name')
  final String? addrDistrictName;
  @override
  @JsonKey(name: 'master_addr_prefecture_name')
  final String? addrPrefectureName;
  @override
  @JsonKey(name: 'master_addr_province_name')
  final String? addrProvinceName;
  @override
  @JsonKey(name: 'master_addr_postcode_code')
  final String? addrPostcodeCode;
  @override
  @JsonKey(name: 'master_company_email')
  final String? companyEmail;

  @override
  String toString() {
    return 'CompanyModel(companyId: $companyId, companyName: $companyName, companyNameEng: $companyNameEng, companyPrefix: $companyPrefix, companyTel: $companyTel, companyTaxid: $companyTaxid, companyAddress: $companyAddress, companyDistrictId: $companyDistrictId, companyPrefectureId: $companyPrefectureId, companyProvinceId: $companyProvinceId, companyPostcodeId: $companyPostcodeId, companyLogo: $companyLogo, addrDistrictName: $addrDistrictName, addrPrefectureName: $addrPrefectureName, addrProvinceName: $addrProvinceName, addrPostcodeCode: $addrPostcodeCode, companyEmail: $companyEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyModelImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyNameEng, companyNameEng) ||
                other.companyNameEng == companyNameEng) &&
            (identical(other.companyPrefix, companyPrefix) ||
                other.companyPrefix == companyPrefix) &&
            (identical(other.companyTel, companyTel) ||
                other.companyTel == companyTel) &&
            (identical(other.companyTaxid, companyTaxid) ||
                other.companyTaxid == companyTaxid) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.companyDistrictId, companyDistrictId) ||
                other.companyDistrictId == companyDistrictId) &&
            (identical(other.companyPrefectureId, companyPrefectureId) ||
                other.companyPrefectureId == companyPrefectureId) &&
            (identical(other.companyProvinceId, companyProvinceId) ||
                other.companyProvinceId == companyProvinceId) &&
            (identical(other.companyPostcodeId, companyPostcodeId) ||
                other.companyPostcodeId == companyPostcodeId) &&
            (identical(other.companyLogo, companyLogo) ||
                other.companyLogo == companyLogo) &&
            (identical(other.addrDistrictName, addrDistrictName) ||
                other.addrDistrictName == addrDistrictName) &&
            (identical(other.addrPrefectureName, addrPrefectureName) ||
                other.addrPrefectureName == addrPrefectureName) &&
            (identical(other.addrProvinceName, addrProvinceName) ||
                other.addrProvinceName == addrProvinceName) &&
            (identical(other.addrPostcodeCode, addrPostcodeCode) ||
                other.addrPostcodeCode == addrPostcodeCode) &&
            (identical(other.companyEmail, companyEmail) ||
                other.companyEmail == companyEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      companyId,
      companyName,
      companyNameEng,
      companyPrefix,
      companyTel,
      companyTaxid,
      companyAddress,
      companyDistrictId,
      companyPrefectureId,
      companyProvinceId,
      companyPostcodeId,
      companyLogo,
      addrDistrictName,
      addrPrefectureName,
      addrProvinceName,
      addrPostcodeCode,
      companyEmail);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyModel implements CompanyModel {
  const factory _CompanyModel(
      {@JsonKey(name: 'master_company_id') final String? companyId,
      @JsonKey(name: 'master_company_name') final String? companyName,
      @JsonKey(name: 'master_company_name_eng') final String? companyNameEng,
      @JsonKey(name: 'master_company_prefix') final String? companyPrefix,
      @JsonKey(name: 'master_company_tel') final String? companyTel,
      @JsonKey(name: 'master_company_taxid') final String? companyTaxid,
      @JsonKey(name: 'master_company_address') final String? companyAddress,
      @JsonKey(name: 'master_company_district_id')
      final String? companyDistrictId,
      @JsonKey(name: 'master_company_prefecture_id')
      final String? companyPrefectureId,
      @JsonKey(name: 'master_company_province_id')
      final String? companyProvinceId,
      @JsonKey(name: 'master_company_postcode_id')
      final String? companyPostcodeId,
      @JsonKey(name: 'master_company_logo') final String? companyLogo,
      @JsonKey(name: 'master_addr_district_name')
      final String? addrDistrictName,
      @JsonKey(name: 'master_addr_prefecture_name')
      final String? addrPrefectureName,
      @JsonKey(name: 'master_addr_province_name')
      final String? addrProvinceName,
      @JsonKey(name: 'master_addr_postcode_code')
      final String? addrPostcodeCode,
      @JsonKey(name: 'master_company_email')
      final String? companyEmail}) = _$CompanyModelImpl;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_company_id')
  String? get companyId;
  @override
  @JsonKey(name: 'master_company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'master_company_name_eng')
  String? get companyNameEng;
  @override
  @JsonKey(name: 'master_company_prefix')
  String? get companyPrefix;
  @override
  @JsonKey(name: 'master_company_tel')
  String? get companyTel;
  @override
  @JsonKey(name: 'master_company_taxid')
  String? get companyTaxid;
  @override
  @JsonKey(name: 'master_company_address')
  String? get companyAddress;
  @override
  @JsonKey(name: 'master_company_district_id')
  String? get companyDistrictId;
  @override
  @JsonKey(name: 'master_company_prefecture_id')
  String? get companyPrefectureId;
  @override
  @JsonKey(name: 'master_company_province_id')
  String? get companyProvinceId;
  @override
  @JsonKey(name: 'master_company_postcode_id')
  String? get companyPostcodeId;
  @override
  @JsonKey(name: 'master_company_logo')
  String? get companyLogo;
  @override
  @JsonKey(name: 'master_addr_district_name')
  String? get addrDistrictName;
  @override
  @JsonKey(name: 'master_addr_prefecture_name')
  String? get addrPrefectureName;
  @override
  @JsonKey(name: 'master_addr_province_name')
  String? get addrProvinceName;
  @override
  @JsonKey(name: 'master_addr_postcode_code')
  String? get addrPostcodeCode;
  @override
  @JsonKey(name: 'master_company_email')
  String? get companyEmail;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
