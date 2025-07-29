
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
  @JsonKey(name: 'discount_name') String? discountName,
  @JsonKey(name: 'discount_value') num? discountValue,
  //is_cancel
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) => _$DiscountModelFromJson(json);
}
