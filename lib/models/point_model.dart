
import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_model.freezed.dart';
part 'point_model.g.dart';

@freezed
class PointModel with _$PointModel {
  const factory PointModel({
  @JsonKey(name: 'point_name') String? pointName,
  @JsonKey(name: 'point_value') String? pointValue,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _PointModel;

  factory PointModel.fromJson(Map<String, dynamic> json) => _$PointModelFromJson(json);
}
