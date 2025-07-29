// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'h_d_report_h_q_vat_postt_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HDReportHQVatPosttSaleModel _$HDReportHQVatPosttSaleModelFromJson(
    Map<String, dynamic> json) {
  return _HDReportHQVatPosttSaleModel.fromJson(json);
}

/// @nodoc
mixin _$HDReportHQVatPosttSaleModel {
// @JsonKey(name: 'master_company_id') num? companyId,
  @JsonKey(name: 'master_company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_company_taxid')
  String? get companyTaxid =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'master_company_addr') String? companyAddr,
// @JsonKey(name: 'master_addr_district_id') String? addrDistrictId,
// @JsonKey(name: 'master_addr_prefecture_id') String? addrPrefectureId,
// @JsonKey(name: 'master_addr_province_id') String? addrProvinceId,
// @JsonKey(name: 'master_addr_postcode_id') String? addrPostcodeId,
// @JsonKey(name: 'master_company_logo') String? companyLogo,
// @JsonKey(name: 'master_company_prefix') String? companyPrefix,
// @JsonKey(name: 'master_currency_id') num? currencyId,
// @JsonKey(name: 'master_company_tel') String? companyTel,
// @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
// @JsonKey(name: 'master_company_logo_path') String? companyLogoPath,
// @JsonKey(name: 'master_company_addr_building') String? companyAddrBuilding,
// @JsonKey(name: 'master_company_addr_room_number') String? companyAddrRoomNumber,
// @JsonKey(name: 'master_company_addr_floor') String? companyAddrFloor,
// @JsonKey(name: 'master_company_addr_village') String? companyAddrVillage,
// @JsonKey(name: 'master_company_addr_house_no') String? companyAddrHouseNo,
// @JsonKey(name: 'master_company_addr_village_no') num? companyAddrVillageNo,
// @JsonKey(name: 'master_company_addr_alley_lane') String? companyAddrAlleyLane,
// @JsonKey(name: 'master_company_addr_road') String? companyAddrRoad,
// @JsonKey(name: 'package_id') String? packageId,
// @JsonKey(name: 'savetime') String? savetime,
// @JsonKey(name: 'shop_name') String? shopName,
// @JsonKey(name: 'master_organization_id') String? organizationId,
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'branchs_name')
  List<String>? get branchsName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancel')
  bool? get isCancel => throw _privateConstructorUsedError;

  /// Serializes this HDReportHQVatPosttSaleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HDReportHQVatPosttSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HDReportHQVatPosttSaleModelCopyWith<HDReportHQVatPosttSaleModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HDReportHQVatPosttSaleModelCopyWith<$Res> {
  factory $HDReportHQVatPosttSaleModelCopyWith(
          HDReportHQVatPosttSaleModel value,
          $Res Function(HDReportHQVatPosttSaleModel) then) =
      _$HDReportHQVatPosttSaleModelCopyWithImpl<$Res,
          HDReportHQVatPosttSaleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_company_name') String? companyName,
      @JsonKey(name: 'master_company_taxid') String? companyTaxid,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'branchs_name') List<String>? branchsName,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class _$HDReportHQVatPosttSaleModelCopyWithImpl<$Res,
        $Val extends HDReportHQVatPosttSaleModel>
    implements $HDReportHQVatPosttSaleModelCopyWith<$Res> {
  _$HDReportHQVatPosttSaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HDReportHQVatPosttSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyTaxid = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? branchsName = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxid: freezed == companyTaxid
          ? _value.companyTaxid
          : companyTaxid // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      branchsName: freezed == branchsName
          ? _value.branchsName
          : branchsName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HDReportHQVatPosttSaleModelImplCopyWith<$Res>
    implements $HDReportHQVatPosttSaleModelCopyWith<$Res> {
  factory _$$HDReportHQVatPosttSaleModelImplCopyWith(
          _$HDReportHQVatPosttSaleModelImpl value,
          $Res Function(_$HDReportHQVatPosttSaleModelImpl) then) =
      __$$HDReportHQVatPosttSaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_company_name') String? companyName,
      @JsonKey(name: 'master_company_taxid') String? companyTaxid,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'branchs_name') List<String>? branchsName,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class __$$HDReportHQVatPosttSaleModelImplCopyWithImpl<$Res>
    extends _$HDReportHQVatPosttSaleModelCopyWithImpl<$Res,
        _$HDReportHQVatPosttSaleModelImpl>
    implements _$$HDReportHQVatPosttSaleModelImplCopyWith<$Res> {
  __$$HDReportHQVatPosttSaleModelImplCopyWithImpl(
      _$HDReportHQVatPosttSaleModelImpl _value,
      $Res Function(_$HDReportHQVatPosttSaleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HDReportHQVatPosttSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyTaxid = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? branchsName = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_$HDReportHQVatPosttSaleModelImpl(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxid: freezed == companyTaxid
          ? _value.companyTaxid
          : companyTaxid // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      branchsName: freezed == branchsName
          ? _value._branchsName
          : branchsName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HDReportHQVatPosttSaleModelImpl
    implements _HDReportHQVatPosttSaleModel {
  const _$HDReportHQVatPosttSaleModelImpl(
      {@JsonKey(name: 'master_company_name') this.companyName,
      @JsonKey(name: 'master_company_taxid') this.companyTaxid,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'branchs_name') final List<String>? branchsName,
      @JsonKey(name: 'is_cancel') this.isCancel})
      : _branchsName = branchsName;

  factory _$HDReportHQVatPosttSaleModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HDReportHQVatPosttSaleModelImplFromJson(json);

// @JsonKey(name: 'master_company_id') num? companyId,
  @override
  @JsonKey(name: 'master_company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'master_company_taxid')
  final String? companyTaxid;
// @JsonKey(name: 'master_company_addr') String? companyAddr,
// @JsonKey(name: 'master_addr_district_id') String? addrDistrictId,
// @JsonKey(name: 'master_addr_prefecture_id') String? addrPrefectureId,
// @JsonKey(name: 'master_addr_province_id') String? addrProvinceId,
// @JsonKey(name: 'master_addr_postcode_id') String? addrPostcodeId,
// @JsonKey(name: 'master_company_logo') String? companyLogo,
// @JsonKey(name: 'master_company_prefix') String? companyPrefix,
// @JsonKey(name: 'master_currency_id') num? currencyId,
// @JsonKey(name: 'master_company_tel') String? companyTel,
// @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
// @JsonKey(name: 'master_company_logo_path') String? companyLogoPath,
// @JsonKey(name: 'master_company_addr_building') String? companyAddrBuilding,
// @JsonKey(name: 'master_company_addr_room_number') String? companyAddrRoomNumber,
// @JsonKey(name: 'master_company_addr_floor') String? companyAddrFloor,
// @JsonKey(name: 'master_company_addr_village') String? companyAddrVillage,
// @JsonKey(name: 'master_company_addr_house_no') String? companyAddrHouseNo,
// @JsonKey(name: 'master_company_addr_village_no') num? companyAddrVillageNo,
// @JsonKey(name: 'master_company_addr_alley_lane') String? companyAddrAlleyLane,
// @JsonKey(name: 'master_company_addr_road') String? companyAddrRoad,
// @JsonKey(name: 'package_id') String? packageId,
// @JsonKey(name: 'savetime') String? savetime,
// @JsonKey(name: 'shop_name') String? shopName,
// @JsonKey(name: 'master_organization_id') String? organizationId,
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  final List<String>? _branchsName;
  @override
  @JsonKey(name: 'branchs_name')
  List<String>? get branchsName {
    final value = _branchsName;
    if (value == null) return null;
    if (_branchsName is EqualUnmodifiableListView) return _branchsName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_cancel')
  final bool? isCancel;

  @override
  String toString() {
    return 'HDReportHQVatPosttSaleModel(companyName: $companyName, companyTaxid: $companyTaxid, startDate: $startDate, endDate: $endDate, branchsName: $branchsName, isCancel: $isCancel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HDReportHQVatPosttSaleModelImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyTaxid, companyTaxid) ||
                other.companyTaxid == companyTaxid) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._branchsName, _branchsName) &&
            (identical(other.isCancel, isCancel) ||
                other.isCancel == isCancel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      companyName,
      companyTaxid,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_branchsName),
      isCancel);

  /// Create a copy of HDReportHQVatPosttSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HDReportHQVatPosttSaleModelImplCopyWith<_$HDReportHQVatPosttSaleModelImpl>
      get copyWith => __$$HDReportHQVatPosttSaleModelImplCopyWithImpl<
          _$HDReportHQVatPosttSaleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HDReportHQVatPosttSaleModelImplToJson(
      this,
    );
  }
}

abstract class _HDReportHQVatPosttSaleModel
    implements HDReportHQVatPosttSaleModel {
  const factory _HDReportHQVatPosttSaleModel(
          {@JsonKey(name: 'master_company_name') final String? companyName,
          @JsonKey(name: 'master_company_taxid') final String? companyTaxid,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate,
          @JsonKey(name: 'branchs_name') final List<String>? branchsName,
          @JsonKey(name: 'is_cancel') final bool? isCancel}) =
      _$HDReportHQVatPosttSaleModelImpl;

  factory _HDReportHQVatPosttSaleModel.fromJson(Map<String, dynamic> json) =
      _$HDReportHQVatPosttSaleModelImpl.fromJson;

// @JsonKey(name: 'master_company_id') num? companyId,
  @override
  @JsonKey(name: 'master_company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'master_company_taxid')
  String?
      get companyTaxid; // @JsonKey(name: 'master_company_addr') String? companyAddr,
// @JsonKey(name: 'master_addr_district_id') String? addrDistrictId,
// @JsonKey(name: 'master_addr_prefecture_id') String? addrPrefectureId,
// @JsonKey(name: 'master_addr_province_id') String? addrProvinceId,
// @JsonKey(name: 'master_addr_postcode_id') String? addrPostcodeId,
// @JsonKey(name: 'master_company_logo') String? companyLogo,
// @JsonKey(name: 'master_company_prefix') String? companyPrefix,
// @JsonKey(name: 'master_currency_id') num? currencyId,
// @JsonKey(name: 'master_company_tel') String? companyTel,
// @JsonKey(name: 'master_company_name_eng') String? companyNameEng,
// @JsonKey(name: 'master_company_logo_path') String? companyLogoPath,
// @JsonKey(name: 'master_company_addr_building') String? companyAddrBuilding,
// @JsonKey(name: 'master_company_addr_room_number') String? companyAddrRoomNumber,
// @JsonKey(name: 'master_company_addr_floor') String? companyAddrFloor,
// @JsonKey(name: 'master_company_addr_village') String? companyAddrVillage,
// @JsonKey(name: 'master_company_addr_house_no') String? companyAddrHouseNo,
// @JsonKey(name: 'master_company_addr_village_no') num? companyAddrVillageNo,
// @JsonKey(name: 'master_company_addr_alley_lane') String? companyAddrAlleyLane,
// @JsonKey(name: 'master_company_addr_road') String? companyAddrRoad,
// @JsonKey(name: 'package_id') String? packageId,
// @JsonKey(name: 'savetime') String? savetime,
// @JsonKey(name: 'shop_name') String? shopName,
// @JsonKey(name: 'master_organization_id') String? organizationId,
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'branchs_name')
  List<String>? get branchsName;
  @override
  @JsonKey(name: 'is_cancel')
  bool? get isCancel;

  /// Create a copy of HDReportHQVatPosttSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HDReportHQVatPosttSaleModelImplCopyWith<_$HDReportHQVatPosttSaleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
