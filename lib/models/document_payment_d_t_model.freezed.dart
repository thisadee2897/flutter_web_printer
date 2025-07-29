// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_payment_d_t_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentPaymentDTModel _$DocumentPaymentDTModelFromJson(
    Map<String, dynamic> json) {
  return _DocumentPaymentDTModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentPaymentDTModel {
  @JsonKey(name: 'payment_dt_id')
  String? get paymentDtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_hd_id')
  String? get paymentHdId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_dt_listno')
  num? get paymentDtListno => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_hd_id')
  String? get receiveHdId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_hd_docudate')
  String? get receiveHdDocudate => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_hd_docuno')
  String? get receiveHdDocuno => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_dt_invoice_totoalamount')
  String? get paymentDtInvoiceTotoalamount =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_dt_paymentamount')
  String? get paymentDtPaymentamount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_dt_invoice_lastamount')
  String? get paymentDtInvoiceLastamount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancel')
  bool? get isCancel => throw _privateConstructorUsedError;

  /// Serializes this DocumentPaymentDTModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentPaymentDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentPaymentDTModelCopyWith<DocumentPaymentDTModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentPaymentDTModelCopyWith<$Res> {
  factory $DocumentPaymentDTModelCopyWith(DocumentPaymentDTModel value,
          $Res Function(DocumentPaymentDTModel) then) =
      _$DocumentPaymentDTModelCopyWithImpl<$Res, DocumentPaymentDTModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_dt_id') String? paymentDtId,
      @JsonKey(name: 'payment_hd_id') String? paymentHdId,
      @JsonKey(name: 'payment_dt_listno') num? paymentDtListno,
      @JsonKey(name: 'receive_hd_id') String? receiveHdId,
      @JsonKey(name: 'receive_hd_docudate') String? receiveHdDocudate,
      @JsonKey(name: 'receive_hd_docuno') String? receiveHdDocuno,
      @JsonKey(name: 'payment_dt_invoice_totoalamount')
      String? paymentDtInvoiceTotoalamount,
      @JsonKey(name: 'payment_dt_paymentamount') String? paymentDtPaymentamount,
      @JsonKey(name: 'payment_dt_invoice_lastamount')
      String? paymentDtInvoiceLastamount,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class _$DocumentPaymentDTModelCopyWithImpl<$Res,
        $Val extends DocumentPaymentDTModel>
    implements $DocumentPaymentDTModelCopyWith<$Res> {
  _$DocumentPaymentDTModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentPaymentDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDtId = freezed,
    Object? paymentHdId = freezed,
    Object? paymentDtListno = freezed,
    Object? receiveHdId = freezed,
    Object? receiveHdDocudate = freezed,
    Object? receiveHdDocuno = freezed,
    Object? paymentDtInvoiceTotoalamount = freezed,
    Object? paymentDtPaymentamount = freezed,
    Object? paymentDtInvoiceLastamount = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_value.copyWith(
      paymentDtId: freezed == paymentDtId
          ? _value.paymentDtId
          : paymentDtId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentHdId: freezed == paymentHdId
          ? _value.paymentHdId
          : paymentHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtListno: freezed == paymentDtListno
          ? _value.paymentDtListno
          : paymentDtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      receiveHdId: freezed == receiveHdId
          ? _value.receiveHdId
          : receiveHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveHdDocudate: freezed == receiveHdDocudate
          ? _value.receiveHdDocudate
          : receiveHdDocudate // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveHdDocuno: freezed == receiveHdDocuno
          ? _value.receiveHdDocuno
          : receiveHdDocuno // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtInvoiceTotoalamount: freezed == paymentDtInvoiceTotoalamount
          ? _value.paymentDtInvoiceTotoalamount
          : paymentDtInvoiceTotoalamount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtPaymentamount: freezed == paymentDtPaymentamount
          ? _value.paymentDtPaymentamount
          : paymentDtPaymentamount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtInvoiceLastamount: freezed == paymentDtInvoiceLastamount
          ? _value.paymentDtInvoiceLastamount
          : paymentDtInvoiceLastamount // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentPaymentDTModelImplCopyWith<$Res>
    implements $DocumentPaymentDTModelCopyWith<$Res> {
  factory _$$DocumentPaymentDTModelImplCopyWith(
          _$DocumentPaymentDTModelImpl value,
          $Res Function(_$DocumentPaymentDTModelImpl) then) =
      __$$DocumentPaymentDTModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_dt_id') String? paymentDtId,
      @JsonKey(name: 'payment_hd_id') String? paymentHdId,
      @JsonKey(name: 'payment_dt_listno') num? paymentDtListno,
      @JsonKey(name: 'receive_hd_id') String? receiveHdId,
      @JsonKey(name: 'receive_hd_docudate') String? receiveHdDocudate,
      @JsonKey(name: 'receive_hd_docuno') String? receiveHdDocuno,
      @JsonKey(name: 'payment_dt_invoice_totoalamount')
      String? paymentDtInvoiceTotoalamount,
      @JsonKey(name: 'payment_dt_paymentamount') String? paymentDtPaymentamount,
      @JsonKey(name: 'payment_dt_invoice_lastamount')
      String? paymentDtInvoiceLastamount,
      @JsonKey(name: 'is_cancel') bool? isCancel});
}

/// @nodoc
class __$$DocumentPaymentDTModelImplCopyWithImpl<$Res>
    extends _$DocumentPaymentDTModelCopyWithImpl<$Res,
        _$DocumentPaymentDTModelImpl>
    implements _$$DocumentPaymentDTModelImplCopyWith<$Res> {
  __$$DocumentPaymentDTModelImplCopyWithImpl(
      _$DocumentPaymentDTModelImpl _value,
      $Res Function(_$DocumentPaymentDTModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentPaymentDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDtId = freezed,
    Object? paymentHdId = freezed,
    Object? paymentDtListno = freezed,
    Object? receiveHdId = freezed,
    Object? receiveHdDocudate = freezed,
    Object? receiveHdDocuno = freezed,
    Object? paymentDtInvoiceTotoalamount = freezed,
    Object? paymentDtPaymentamount = freezed,
    Object? paymentDtInvoiceLastamount = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_$DocumentPaymentDTModelImpl(
      paymentDtId: freezed == paymentDtId
          ? _value.paymentDtId
          : paymentDtId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentHdId: freezed == paymentHdId
          ? _value.paymentHdId
          : paymentHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtListno: freezed == paymentDtListno
          ? _value.paymentDtListno
          : paymentDtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      receiveHdId: freezed == receiveHdId
          ? _value.receiveHdId
          : receiveHdId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveHdDocudate: freezed == receiveHdDocudate
          ? _value.receiveHdDocudate
          : receiveHdDocudate // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveHdDocuno: freezed == receiveHdDocuno
          ? _value.receiveHdDocuno
          : receiveHdDocuno // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtInvoiceTotoalamount: freezed == paymentDtInvoiceTotoalamount
          ? _value.paymentDtInvoiceTotoalamount
          : paymentDtInvoiceTotoalamount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtPaymentamount: freezed == paymentDtPaymentamount
          ? _value.paymentDtPaymentamount
          : paymentDtPaymentamount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDtInvoiceLastamount: freezed == paymentDtInvoiceLastamount
          ? _value.paymentDtInvoiceLastamount
          : paymentDtInvoiceLastamount // ignore: cast_nullable_to_non_nullable
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
class _$DocumentPaymentDTModelImpl implements _DocumentPaymentDTModel {
  const _$DocumentPaymentDTModelImpl(
      {@JsonKey(name: 'payment_dt_id') this.paymentDtId,
      @JsonKey(name: 'payment_hd_id') this.paymentHdId,
      @JsonKey(name: 'payment_dt_listno') this.paymentDtListno,
      @JsonKey(name: 'receive_hd_id') this.receiveHdId,
      @JsonKey(name: 'receive_hd_docudate') this.receiveHdDocudate,
      @JsonKey(name: 'receive_hd_docuno') this.receiveHdDocuno,
      @JsonKey(name: 'payment_dt_invoice_totoalamount')
      this.paymentDtInvoiceTotoalamount,
      @JsonKey(name: 'payment_dt_paymentamount') this.paymentDtPaymentamount,
      @JsonKey(name: 'payment_dt_invoice_lastamount')
      this.paymentDtInvoiceLastamount,
      @JsonKey(name: 'is_cancel') this.isCancel});

  factory _$DocumentPaymentDTModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentPaymentDTModelImplFromJson(json);

  @override
  @JsonKey(name: 'payment_dt_id')
  final String? paymentDtId;
  @override
  @JsonKey(name: 'payment_hd_id')
  final String? paymentHdId;
  @override
  @JsonKey(name: 'payment_dt_listno')
  final num? paymentDtListno;
  @override
  @JsonKey(name: 'receive_hd_id')
  final String? receiveHdId;
  @override
  @JsonKey(name: 'receive_hd_docudate')
  final String? receiveHdDocudate;
  @override
  @JsonKey(name: 'receive_hd_docuno')
  final String? receiveHdDocuno;
  @override
  @JsonKey(name: 'payment_dt_invoice_totoalamount')
  final String? paymentDtInvoiceTotoalamount;
  @override
  @JsonKey(name: 'payment_dt_paymentamount')
  final String? paymentDtPaymentamount;
  @override
  @JsonKey(name: 'payment_dt_invoice_lastamount')
  final String? paymentDtInvoiceLastamount;
  @override
  @JsonKey(name: 'is_cancel')
  final bool? isCancel;

  @override
  String toString() {
    return 'DocumentPaymentDTModel(paymentDtId: $paymentDtId, paymentHdId: $paymentHdId, paymentDtListno: $paymentDtListno, receiveHdId: $receiveHdId, receiveHdDocudate: $receiveHdDocudate, receiveHdDocuno: $receiveHdDocuno, paymentDtInvoiceTotoalamount: $paymentDtInvoiceTotoalamount, paymentDtPaymentamount: $paymentDtPaymentamount, paymentDtInvoiceLastamount: $paymentDtInvoiceLastamount, isCancel: $isCancel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentPaymentDTModelImpl &&
            (identical(other.paymentDtId, paymentDtId) ||
                other.paymentDtId == paymentDtId) &&
            (identical(other.paymentHdId, paymentHdId) ||
                other.paymentHdId == paymentHdId) &&
            (identical(other.paymentDtListno, paymentDtListno) ||
                other.paymentDtListno == paymentDtListno) &&
            (identical(other.receiveHdId, receiveHdId) ||
                other.receiveHdId == receiveHdId) &&
            (identical(other.receiveHdDocudate, receiveHdDocudate) ||
                other.receiveHdDocudate == receiveHdDocudate) &&
            (identical(other.receiveHdDocuno, receiveHdDocuno) ||
                other.receiveHdDocuno == receiveHdDocuno) &&
            (identical(other.paymentDtInvoiceTotoalamount,
                    paymentDtInvoiceTotoalamount) ||
                other.paymentDtInvoiceTotoalamount ==
                    paymentDtInvoiceTotoalamount) &&
            (identical(other.paymentDtPaymentamount, paymentDtPaymentamount) ||
                other.paymentDtPaymentamount == paymentDtPaymentamount) &&
            (identical(other.paymentDtInvoiceLastamount,
                    paymentDtInvoiceLastamount) ||
                other.paymentDtInvoiceLastamount ==
                    paymentDtInvoiceLastamount) &&
            (identical(other.isCancel, isCancel) ||
                other.isCancel == isCancel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentDtId,
      paymentHdId,
      paymentDtListno,
      receiveHdId,
      receiveHdDocudate,
      receiveHdDocuno,
      paymentDtInvoiceTotoalamount,
      paymentDtPaymentamount,
      paymentDtInvoiceLastamount,
      isCancel);

  /// Create a copy of DocumentPaymentDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentPaymentDTModelImplCopyWith<_$DocumentPaymentDTModelImpl>
      get copyWith => __$$DocumentPaymentDTModelImplCopyWithImpl<
          _$DocumentPaymentDTModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentPaymentDTModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentPaymentDTModel implements DocumentPaymentDTModel {
  const factory _DocumentPaymentDTModel(
          {@JsonKey(name: 'payment_dt_id') final String? paymentDtId,
          @JsonKey(name: 'payment_hd_id') final String? paymentHdId,
          @JsonKey(name: 'payment_dt_listno') final num? paymentDtListno,
          @JsonKey(name: 'receive_hd_id') final String? receiveHdId,
          @JsonKey(name: 'receive_hd_docudate') final String? receiveHdDocudate,
          @JsonKey(name: 'receive_hd_docuno') final String? receiveHdDocuno,
          @JsonKey(name: 'payment_dt_invoice_totoalamount')
          final String? paymentDtInvoiceTotoalamount,
          @JsonKey(name: 'payment_dt_paymentamount')
          final String? paymentDtPaymentamount,
          @JsonKey(name: 'payment_dt_invoice_lastamount')
          final String? paymentDtInvoiceLastamount,
          @JsonKey(name: 'is_cancel') final bool? isCancel}) =
      _$DocumentPaymentDTModelImpl;

  factory _DocumentPaymentDTModel.fromJson(Map<String, dynamic> json) =
      _$DocumentPaymentDTModelImpl.fromJson;

  @override
  @JsonKey(name: 'payment_dt_id')
  String? get paymentDtId;
  @override
  @JsonKey(name: 'payment_hd_id')
  String? get paymentHdId;
  @override
  @JsonKey(name: 'payment_dt_listno')
  num? get paymentDtListno;
  @override
  @JsonKey(name: 'receive_hd_id')
  String? get receiveHdId;
  @override
  @JsonKey(name: 'receive_hd_docudate')
  String? get receiveHdDocudate;
  @override
  @JsonKey(name: 'receive_hd_docuno')
  String? get receiveHdDocuno;
  @override
  @JsonKey(name: 'payment_dt_invoice_totoalamount')
  String? get paymentDtInvoiceTotoalamount;
  @override
  @JsonKey(name: 'payment_dt_paymentamount')
  String? get paymentDtPaymentamount;
  @override
  @JsonKey(name: 'payment_dt_invoice_lastamount')
  String? get paymentDtInvoiceLastamount;
  @override
  @JsonKey(name: 'is_cancel')
  bool? get isCancel;

  /// Create a copy of DocumentPaymentDTModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentPaymentDTModelImplCopyWith<_$DocumentPaymentDTModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
