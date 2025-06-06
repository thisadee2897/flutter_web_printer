// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header_simplified_tax_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeaderSimplifiedTaxInvoiceModel _$HeaderSimplifiedTaxInvoiceModelFromJson(
    Map<String, dynamic> json) {
  return _HeaderSimplifiedTaxInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$HeaderSimplifiedTaxInvoiceModel {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_logo_image_network')
  String? get companyLogoImageNetwork => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_address')
  String? get companyAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_phone_number')
  String? get companyPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_tax_id')
  String? get companyTaxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_name')
  String? get employeeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_number')
  String? get tableNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'docu_no')
  String? get docuNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'docu_date')
  String? get docuDate => throw _privateConstructorUsedError;

  /// Serializes this HeaderSimplifiedTaxInvoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeaderSimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeaderSimplifiedTaxInvoiceModelCopyWith<HeaderSimplifiedTaxInvoiceModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res> {
  factory $HeaderSimplifiedTaxInvoiceModelCopyWith(
          HeaderSimplifiedTaxInvoiceModel value,
          $Res Function(HeaderSimplifiedTaxInvoiceModel) then) =
      _$HeaderSimplifiedTaxInvoiceModelCopyWithImpl<$Res,
          HeaderSimplifiedTaxInvoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'company_logo_image_network')
      String? companyLogoImageNetwork,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'company_address') String? companyAddress,
      @JsonKey(name: 'company_phone_number') String? companyPhoneNumber,
      @JsonKey(name: 'company_tax_id') String? companyTaxId,
      @JsonKey(name: 'employee_name') String? employeeName,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'table_number') String? tableNumber,
      @JsonKey(name: 'docu_no') String? docuNo,
      @JsonKey(name: 'docu_date') String? docuDate});
}

/// @nodoc
class _$HeaderSimplifiedTaxInvoiceModelCopyWithImpl<$Res,
        $Val extends HeaderSimplifiedTaxInvoiceModel>
    implements $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res> {
  _$HeaderSimplifiedTaxInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeaderSimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? companyLogoImageNetwork = freezed,
    Object? companyName = freezed,
    Object? companyAddress = freezed,
    Object? companyPhoneNumber = freezed,
    Object? companyTaxId = freezed,
    Object? employeeName = freezed,
    Object? customerName = freezed,
    Object? tableNumber = freezed,
    Object? docuNo = freezed,
    Object? docuDate = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogoImageNetwork: freezed == companyLogoImageNetwork
          ? _value.companyLogoImageNetwork
          : companyLogoImageNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: freezed == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPhoneNumber: freezed == companyPhoneNumber
          ? _value.companyPhoneNumber
          : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxId: freezed == companyTaxId
          ? _value.companyTaxId
          : companyTaxId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      docuNo: freezed == docuNo
          ? _value.docuNo
          : docuNo // ignore: cast_nullable_to_non_nullable
              as String?,
      docuDate: freezed == docuDate
          ? _value.docuDate
          : docuDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeaderSimplifiedTaxInvoiceModelImplCopyWith<$Res>
    implements $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res> {
  factory _$$HeaderSimplifiedTaxInvoiceModelImplCopyWith(
          _$HeaderSimplifiedTaxInvoiceModelImpl value,
          $Res Function(_$HeaderSimplifiedTaxInvoiceModelImpl) then) =
      __$$HeaderSimplifiedTaxInvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'company_logo_image_network')
      String? companyLogoImageNetwork,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'company_address') String? companyAddress,
      @JsonKey(name: 'company_phone_number') String? companyPhoneNumber,
      @JsonKey(name: 'company_tax_id') String? companyTaxId,
      @JsonKey(name: 'employee_name') String? employeeName,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'table_number') String? tableNumber,
      @JsonKey(name: 'docu_no') String? docuNo,
      @JsonKey(name: 'docu_date') String? docuDate});
}

/// @nodoc
class __$$HeaderSimplifiedTaxInvoiceModelImplCopyWithImpl<$Res>
    extends _$HeaderSimplifiedTaxInvoiceModelCopyWithImpl<$Res,
        _$HeaderSimplifiedTaxInvoiceModelImpl>
    implements _$$HeaderSimplifiedTaxInvoiceModelImplCopyWith<$Res> {
  __$$HeaderSimplifiedTaxInvoiceModelImplCopyWithImpl(
      _$HeaderSimplifiedTaxInvoiceModelImpl _value,
      $Res Function(_$HeaderSimplifiedTaxInvoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeaderSimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? companyLogoImageNetwork = freezed,
    Object? companyName = freezed,
    Object? companyAddress = freezed,
    Object? companyPhoneNumber = freezed,
    Object? companyTaxId = freezed,
    Object? employeeName = freezed,
    Object? customerName = freezed,
    Object? tableNumber = freezed,
    Object? docuNo = freezed,
    Object? docuDate = freezed,
  }) {
    return _then(_$HeaderSimplifiedTaxInvoiceModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLogoImageNetwork: freezed == companyLogoImageNetwork
          ? _value.companyLogoImageNetwork
          : companyLogoImageNetwork // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: freezed == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPhoneNumber: freezed == companyPhoneNumber
          ? _value.companyPhoneNumber
          : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxId: freezed == companyTaxId
          ? _value.companyTaxId
          : companyTaxId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      docuNo: freezed == docuNo
          ? _value.docuNo
          : docuNo // ignore: cast_nullable_to_non_nullable
              as String?,
      docuDate: freezed == docuDate
          ? _value.docuDate
          : docuDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeaderSimplifiedTaxInvoiceModelImpl
    implements _HeaderSimplifiedTaxInvoiceModel {
  const _$HeaderSimplifiedTaxInvoiceModelImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'company_logo_image_network') this.companyLogoImageNetwork,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'company_address') this.companyAddress,
      @JsonKey(name: 'company_phone_number') this.companyPhoneNumber,
      @JsonKey(name: 'company_tax_id') this.companyTaxId,
      @JsonKey(name: 'employee_name') this.employeeName,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'table_number') this.tableNumber,
      @JsonKey(name: 'docu_no') this.docuNo,
      @JsonKey(name: 'docu_date') this.docuDate});

  factory _$HeaderSimplifiedTaxInvoiceModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HeaderSimplifiedTaxInvoiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'company_logo_image_network')
  final String? companyLogoImageNetwork;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'company_address')
  final String? companyAddress;
  @override
  @JsonKey(name: 'company_phone_number')
  final String? companyPhoneNumber;
  @override
  @JsonKey(name: 'company_tax_id')
  final String? companyTaxId;
  @override
  @JsonKey(name: 'employee_name')
  final String? employeeName;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'table_number')
  final String? tableNumber;
  @override
  @JsonKey(name: 'docu_no')
  final String? docuNo;
  @override
  @JsonKey(name: 'docu_date')
  final String? docuDate;

  @override
  String toString() {
    return 'HeaderSimplifiedTaxInvoiceModel(title: $title, companyLogoImageNetwork: $companyLogoImageNetwork, companyName: $companyName, companyAddress: $companyAddress, companyPhoneNumber: $companyPhoneNumber, companyTaxId: $companyTaxId, employeeName: $employeeName, customerName: $customerName, tableNumber: $tableNumber, docuNo: $docuNo, docuDate: $docuDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderSimplifiedTaxInvoiceModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(
                    other.companyLogoImageNetwork, companyLogoImageNetwork) ||
                other.companyLogoImageNetwork == companyLogoImageNetwork) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.companyPhoneNumber, companyPhoneNumber) ||
                other.companyPhoneNumber == companyPhoneNumber) &&
            (identical(other.companyTaxId, companyTaxId) ||
                other.companyTaxId == companyTaxId) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.docuNo, docuNo) || other.docuNo == docuNo) &&
            (identical(other.docuDate, docuDate) ||
                other.docuDate == docuDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      companyLogoImageNetwork,
      companyName,
      companyAddress,
      companyPhoneNumber,
      companyTaxId,
      employeeName,
      customerName,
      tableNumber,
      docuNo,
      docuDate);

  /// Create a copy of HeaderSimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderSimplifiedTaxInvoiceModelImplCopyWith<
          _$HeaderSimplifiedTaxInvoiceModelImpl>
      get copyWith => __$$HeaderSimplifiedTaxInvoiceModelImplCopyWithImpl<
          _$HeaderSimplifiedTaxInvoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeaderSimplifiedTaxInvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _HeaderSimplifiedTaxInvoiceModel
    implements HeaderSimplifiedTaxInvoiceModel {
  const factory _HeaderSimplifiedTaxInvoiceModel(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'company_logo_image_network')
      final String? companyLogoImageNetwork,
      @JsonKey(name: 'company_name') final String? companyName,
      @JsonKey(name: 'company_address') final String? companyAddress,
      @JsonKey(name: 'company_phone_number') final String? companyPhoneNumber,
      @JsonKey(name: 'company_tax_id') final String? companyTaxId,
      @JsonKey(name: 'employee_name') final String? employeeName,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'table_number') final String? tableNumber,
      @JsonKey(name: 'docu_no') final String? docuNo,
      @JsonKey(name: 'docu_date')
      final String? docuDate}) = _$HeaderSimplifiedTaxInvoiceModelImpl;

  factory _HeaderSimplifiedTaxInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$HeaderSimplifiedTaxInvoiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'company_logo_image_network')
  String? get companyLogoImageNetwork;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'company_address')
  String? get companyAddress;
  @override
  @JsonKey(name: 'company_phone_number')
  String? get companyPhoneNumber;
  @override
  @JsonKey(name: 'company_tax_id')
  String? get companyTaxId;
  @override
  @JsonKey(name: 'employee_name')
  String? get employeeName;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'table_number')
  String? get tableNumber;
  @override
  @JsonKey(name: 'docu_no')
  String? get docuNo;
  @override
  @JsonKey(name: 'docu_date')
  String? get docuDate;

  /// Create a copy of HeaderSimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeaderSimplifiedTaxInvoiceModelImplCopyWith<
          _$HeaderSimplifiedTaxInvoiceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
