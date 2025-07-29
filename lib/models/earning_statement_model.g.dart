// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earning_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarningStatementModelImpl _$$EarningStatementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EarningStatementModelImpl(
      listno: json['listno'] as num?,
      accountCategoryName: json['master_account_category_name'] as String?,
      accountCategorySubName:
          json['master_account_category_sub_name'] as String?,
      companyId: json['master_company_id'] as String?,
      accountCategoryId: json['master_account_category_id'] as num?,
      sumProfit: json['sum_profit'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$EarningStatementModelImplToJson(
        _$EarningStatementModelImpl instance) =>
    <String, dynamic>{
      'listno': instance.listno,
      'master_account_category_name': instance.accountCategoryName,
      'master_account_category_sub_name': instance.accountCategorySubName,
      'master_company_id': instance.companyId,
      'master_account_category_id': instance.accountCategoryId,
      'sum_profit': instance.sumProfit,
      'is_cancel': instance.isCancel,
    };
