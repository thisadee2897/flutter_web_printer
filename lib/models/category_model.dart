
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
  @JsonKey(name: 'category_name') String? categoryName,
  @JsonKey(name: 'quantity') num? quantity,
  @JsonKey(name: 'amount') num? amount,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}
