// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_tax_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimplifiedTaxInvoiceModel _$SimplifiedTaxInvoiceModelFromJson(
    Map<String, dynamic> json) {
  return _SimplifiedTaxInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedTaxInvoiceModel {
  @JsonKey(name: 'header')
  HeaderSimplifiedTaxInvoiceModel? get header =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<DetailTaxInvoiceModel>? get details =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'footer')
  FooterSimplifiedTaxInvoiceModel? get footer =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancel')
  bool? get isCancel => throw _privateConstructorUsedError;

  /// Serializes this SimplifiedTaxInvoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimplifiedTaxInvoiceModelCopyWith<SimplifiedTaxInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedTaxInvoiceModelCopyWith<$Res> {
  factory $SimplifiedTaxInvoiceModelCopyWith(SimplifiedTaxInvoiceModel value,
          $Res Function(SimplifiedTaxInvoiceModel) then) =
      _$SimplifiedTaxInvoiceModelCopyWithImpl<$Res, SimplifiedTaxInvoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'header') HeaderSimplifiedTaxInvoiceModel? header,
      @JsonKey(name: 'details') List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') FooterSimplifiedTaxInvoiceModel? footer,
      @JsonKey(name: 'is_cancel') bool? isCancel});

  $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res>? get header;
  $FooterSimplifiedTaxInvoiceModelCopyWith<$Res>? get footer;
}

/// @nodoc
class _$SimplifiedTaxInvoiceModelCopyWithImpl<$Res,
        $Val extends SimplifiedTaxInvoiceModel>
    implements $SimplifiedTaxInvoiceModelCopyWith<$Res> {
  _$SimplifiedTaxInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderSimplifiedTaxInvoiceModel?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailTaxInvoiceModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterSimplifiedTaxInvoiceModel?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res>(_value.header!,
        (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FooterSimplifiedTaxInvoiceModelCopyWith<$Res>? get footer {
    if (_value.footer == null) {
      return null;
    }

    return $FooterSimplifiedTaxInvoiceModelCopyWith<$Res>(_value.footer!,
        (value) {
      return _then(_value.copyWith(footer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimplifiedTaxInvoiceModelImplCopyWith<$Res>
    implements $SimplifiedTaxInvoiceModelCopyWith<$Res> {
  factory _$$SimplifiedTaxInvoiceModelImplCopyWith(
          _$SimplifiedTaxInvoiceModelImpl value,
          $Res Function(_$SimplifiedTaxInvoiceModelImpl) then) =
      __$$SimplifiedTaxInvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'header') HeaderSimplifiedTaxInvoiceModel? header,
      @JsonKey(name: 'details') List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') FooterSimplifiedTaxInvoiceModel? footer,
      @JsonKey(name: 'is_cancel') bool? isCancel});

  @override
  $HeaderSimplifiedTaxInvoiceModelCopyWith<$Res>? get header;
  @override
  $FooterSimplifiedTaxInvoiceModelCopyWith<$Res>? get footer;
}

/// @nodoc
class __$$SimplifiedTaxInvoiceModelImplCopyWithImpl<$Res>
    extends _$SimplifiedTaxInvoiceModelCopyWithImpl<$Res,
        _$SimplifiedTaxInvoiceModelImpl>
    implements _$$SimplifiedTaxInvoiceModelImplCopyWith<$Res> {
  __$$SimplifiedTaxInvoiceModelImplCopyWithImpl(
      _$SimplifiedTaxInvoiceModelImpl _value,
      $Res Function(_$SimplifiedTaxInvoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
    Object? isCancel = freezed,
  }) {
    return _then(_$SimplifiedTaxInvoiceModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderSimplifiedTaxInvoiceModel?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailTaxInvoiceModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterSimplifiedTaxInvoiceModel?,
      isCancel: freezed == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimplifiedTaxInvoiceModelImpl implements _SimplifiedTaxInvoiceModel {
  const _$SimplifiedTaxInvoiceModelImpl(
      {@JsonKey(name: 'header') this.header,
      @JsonKey(name: 'details') final List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') this.footer,
      @JsonKey(name: 'is_cancel') this.isCancel})
      : _details = details;

  factory _$SimplifiedTaxInvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimplifiedTaxInvoiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'header')
  final HeaderSimplifiedTaxInvoiceModel? header;
  final List<DetailTaxInvoiceModel>? _details;
  @override
  @JsonKey(name: 'details')
  List<DetailTaxInvoiceModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'footer')
  final FooterSimplifiedTaxInvoiceModel? footer;
  @override
  @JsonKey(name: 'is_cancel')
  final bool? isCancel;

  @override
  String toString() {
    return 'SimplifiedTaxInvoiceModel(header: $header, details: $details, footer: $footer, isCancel: $isCancel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedTaxInvoiceModelImpl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            (identical(other.isCancel, isCancel) ||
                other.isCancel == isCancel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, header,
      const DeepCollectionEquality().hash(_details), footer, isCancel);

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedTaxInvoiceModelImplCopyWith<_$SimplifiedTaxInvoiceModelImpl>
      get copyWith => __$$SimplifiedTaxInvoiceModelImplCopyWithImpl<
          _$SimplifiedTaxInvoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimplifiedTaxInvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _SimplifiedTaxInvoiceModel implements SimplifiedTaxInvoiceModel {
  const factory _SimplifiedTaxInvoiceModel(
      {@JsonKey(name: 'header') final HeaderSimplifiedTaxInvoiceModel? header,
      @JsonKey(name: 'details') final List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') final FooterSimplifiedTaxInvoiceModel? footer,
      @JsonKey(name: 'is_cancel')
      final bool? isCancel}) = _$SimplifiedTaxInvoiceModelImpl;

  factory _SimplifiedTaxInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$SimplifiedTaxInvoiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'header')
  HeaderSimplifiedTaxInvoiceModel? get header;
  @override
  @JsonKey(name: 'details')
  List<DetailTaxInvoiceModel>? get details;
  @override
  @JsonKey(name: 'footer')
  FooterSimplifiedTaxInvoiceModel? get footer;
  @override
  @JsonKey(name: 'is_cancel')
  bool? get isCancel;

  /// Create a copy of SimplifiedTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimplifiedTaxInvoiceModelImplCopyWith<_$SimplifiedTaxInvoiceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
