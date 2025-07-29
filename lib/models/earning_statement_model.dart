
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earning_statement_model.freezed.dart';
part 'earning_statement_model.g.dart';

@freezed
class EarningStatementModel with _$EarningStatementModel {
  const factory EarningStatementModel({
  @JsonKey(name: 'listno') num? listno,
  @JsonKey(name: 'master_account_category_name') String? accountCategoryName,
  @JsonKey(name: 'master_account_category_sub_name') String? accountCategorySubName,
  @JsonKey(name: 'master_company_id') String? companyId,
  @JsonKey(name: 'master_account_category_id') num? accountCategoryId,
  @JsonKey(name: 'sum_profit') String? sumProfit,
  @JsonKey(name: 'is_cancel') bool? isCancel,
  }) = _EarningStatementModel;

  factory EarningStatementModel.fromJson(Map<String, dynamic> json) => _$EarningStatementModelFromJson(json);
}
