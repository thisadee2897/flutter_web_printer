
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_model.freezed.dart';
part 'payment_method_model.g.dart';

@freezed
class PaymentMethodModel with _$PaymentMethodModel {
  const factory PaymentMethodModel({
  @JsonKey(name: 'payment_method') String? paymentMethod,
  @JsonKey(name: 'amount') num? amount,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _PaymentMethodModel;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) => _$PaymentMethodModelFromJson(json);
}
