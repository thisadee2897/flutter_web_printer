// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_tax_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FullTaxInvoiceModel _$FullTaxInvoiceModelFromJson(Map<String, dynamic> json) {
  return _FullTaxInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$FullTaxInvoiceModel {
  @JsonKey(name: 'original')
  bool? get original => throw _privateConstructorUsedError;
  @JsonKey(name: 'copy')
  bool? get copy => throw _privateConstructorUsedError;
  @JsonKey(name: 'header')
  HeaderFullTaxInvoiceModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<DetailTaxInvoiceModel>? get details =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'footer')
  FooterFullTaxInvoiceModel? get footer => throw _privateConstructorUsedError;

  /// Serializes this FullTaxInvoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FullTaxInvoiceModelCopyWith<FullTaxInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullTaxInvoiceModelCopyWith<$Res> {
  factory $FullTaxInvoiceModelCopyWith(
          FullTaxInvoiceModel value, $Res Function(FullTaxInvoiceModel) then) =
      _$FullTaxInvoiceModelCopyWithImpl<$Res, FullTaxInvoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'original') bool? original,
      @JsonKey(name: 'copy') bool? copy,
      @JsonKey(name: 'header') HeaderFullTaxInvoiceModel? header,
      @JsonKey(name: 'details') List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') FooterFullTaxInvoiceModel? footer});

  $HeaderFullTaxInvoiceModelCopyWith<$Res>? get header;
  $FooterFullTaxInvoiceModelCopyWith<$Res>? get footer;
}

/// @nodoc
class _$FullTaxInvoiceModelCopyWithImpl<$Res, $Val extends FullTaxInvoiceModel>
    implements $FullTaxInvoiceModelCopyWith<$Res> {
  _$FullTaxInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? copy = freezed,
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
  }) {
    return _then(_value.copyWith(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as bool?,
      copy: freezed == copy
          ? _value.copy
          : copy // ignore: cast_nullable_to_non_nullable
              as bool?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderFullTaxInvoiceModel?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailTaxInvoiceModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterFullTaxInvoiceModel?,
    ) as $Val);
  }

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeaderFullTaxInvoiceModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderFullTaxInvoiceModelCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FooterFullTaxInvoiceModelCopyWith<$Res>? get footer {
    if (_value.footer == null) {
      return null;
    }

    return $FooterFullTaxInvoiceModelCopyWith<$Res>(_value.footer!, (value) {
      return _then(_value.copyWith(footer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FullTaxInvoiceModelImplCopyWith<$Res>
    implements $FullTaxInvoiceModelCopyWith<$Res> {
  factory _$$FullTaxInvoiceModelImplCopyWith(_$FullTaxInvoiceModelImpl value,
          $Res Function(_$FullTaxInvoiceModelImpl) then) =
      __$$FullTaxInvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'original') bool? original,
      @JsonKey(name: 'copy') bool? copy,
      @JsonKey(name: 'header') HeaderFullTaxInvoiceModel? header,
      @JsonKey(name: 'details') List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') FooterFullTaxInvoiceModel? footer});

  @override
  $HeaderFullTaxInvoiceModelCopyWith<$Res>? get header;
  @override
  $FooterFullTaxInvoiceModelCopyWith<$Res>? get footer;
}

/// @nodoc
class __$$FullTaxInvoiceModelImplCopyWithImpl<$Res>
    extends _$FullTaxInvoiceModelCopyWithImpl<$Res, _$FullTaxInvoiceModelImpl>
    implements _$$FullTaxInvoiceModelImplCopyWith<$Res> {
  __$$FullTaxInvoiceModelImplCopyWithImpl(_$FullTaxInvoiceModelImpl _value,
      $Res Function(_$FullTaxInvoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? copy = freezed,
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
  }) {
    return _then(_$FullTaxInvoiceModelImpl(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as bool?,
      copy: freezed == copy
          ? _value.copy
          : copy // ignore: cast_nullable_to_non_nullable
              as bool?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderFullTaxInvoiceModel?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailTaxInvoiceModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterFullTaxInvoiceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullTaxInvoiceModelImpl implements _FullTaxInvoiceModel {
  const _$FullTaxInvoiceModelImpl(
      {@JsonKey(name: 'original') this.original,
      @JsonKey(name: 'copy') this.copy,
      @JsonKey(name: 'header') this.header,
      @JsonKey(name: 'details') final List<DetailTaxInvoiceModel>? details,
      @JsonKey(name: 'footer') this.footer})
      : _details = details;

  factory _$FullTaxInvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullTaxInvoiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'original')
  final bool? original;
  @override
  @JsonKey(name: 'copy')
  final bool? copy;
  @override
  @JsonKey(name: 'header')
  final HeaderFullTaxInvoiceModel? header;
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
  final FooterFullTaxInvoiceModel? footer;

  @override
  String toString() {
    return 'FullTaxInvoiceModel(original: $original, copy: $copy, header: $header, details: $details, footer: $footer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullTaxInvoiceModelImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.copy, copy) || other.copy == copy) &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.footer, footer) || other.footer == footer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, copy, header,
      const DeepCollectionEquality().hash(_details), footer);

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FullTaxInvoiceModelImplCopyWith<_$FullTaxInvoiceModelImpl> get copyWith =>
      __$$FullTaxInvoiceModelImplCopyWithImpl<_$FullTaxInvoiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullTaxInvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _FullTaxInvoiceModel implements FullTaxInvoiceModel {
  const factory _FullTaxInvoiceModel(
          {@JsonKey(name: 'original') final bool? original,
          @JsonKey(name: 'copy') final bool? copy,
          @JsonKey(name: 'header') final HeaderFullTaxInvoiceModel? header,
          @JsonKey(name: 'details') final List<DetailTaxInvoiceModel>? details,
          @JsonKey(name: 'footer') final FooterFullTaxInvoiceModel? footer}) =
      _$FullTaxInvoiceModelImpl;

  factory _FullTaxInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$FullTaxInvoiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'original')
  bool? get original;
  @override
  @JsonKey(name: 'copy')
  bool? get copy;
  @override
  @JsonKey(name: 'header')
  HeaderFullTaxInvoiceModel? get header;
  @override
  @JsonKey(name: 'details')
  List<DetailTaxInvoiceModel>? get details;
  @override
  @JsonKey(name: 'footer')
  FooterFullTaxInvoiceModel? get footer;

  /// Create a copy of FullTaxInvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FullTaxInvoiceModelImplCopyWith<_$FullTaxInvoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
