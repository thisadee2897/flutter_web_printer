
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch2.freezed.dart';
part 'branch2.g.dart';

@freezed
class Branch2 with _$Branch2 {
  const factory Branch2({
  @JsonKey(name: 'master_branch_number') String? branchNumber,
  @JsonKey(name: 'is_selected') bool? isSelected,
  }) = _Branch2;

  factory Branch2.fromJson(Map<String, dynamic> json) => _$Branch2FromJson(json);
}
