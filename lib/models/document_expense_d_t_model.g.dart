// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_expense_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentExpenseDTModelImpl _$$DocumentExpenseDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentExpenseDTModelImpl(
      expenseDtId: json['expense_dt_id'] as String?,
      expenseHdId: json['expense_hd_id'] as String?,
      expenseDtListno: json['expense_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      unitId: json['master_unit_id'] as String?,
      expenseDtProductBarcodeId:
          json['expense_dt_master_product_barcode_id'] as String?,
      expenseDtProductBarcodeCode:
          json['expense_dt_master_product_barcode_code'] as String?,
      productBarcodeName: json['master_product_barcode_name'] as String?,
      expenseDtProductBarcodeMasterUnitId:
          json['expense_dt_master_product_barcode_master_unit_id'] as String?,
      expenseDtProductBarcodeMasterUnitName:
          json['expense_dt_master_product_barcode_master_unit_name'] as String?,
      expenseDtProductBarcodeRate:
          json['expense_dt_master_product_barcode_rate'] as String?,
      expenseDtVatFlag: json['expense_dt_vat_flag'] as bool?,
      accountId: json['master_account_id'] as String?,
      expenseDtPrice: json['expense_dt_price'] as String?,
      expenseDtQty: json['expense_dt_qty'] as String?,
      expenseDtDiscount: json['expense_dt_discount'] as String?,
      expenseDtNetamnt: json['expense_dt_netamnt'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentExpenseDTModelImplToJson(
        _$DocumentExpenseDTModelImpl instance) =>
    <String, dynamic>{
      'expense_dt_id': instance.expenseDtId,
      'expense_hd_id': instance.expenseHdId,
      'expense_dt_listno': instance.expenseDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_unit_id': instance.unitId,
      'expense_dt_master_product_barcode_id':
          instance.expenseDtProductBarcodeId,
      'expense_dt_master_product_barcode_code':
          instance.expenseDtProductBarcodeCode,
      'master_product_barcode_name': instance.productBarcodeName,
      'expense_dt_master_product_barcode_master_unit_id':
          instance.expenseDtProductBarcodeMasterUnitId,
      'expense_dt_master_product_barcode_master_unit_name':
          instance.expenseDtProductBarcodeMasterUnitName,
      'expense_dt_master_product_barcode_rate':
          instance.expenseDtProductBarcodeRate,
      'expense_dt_vat_flag': instance.expenseDtVatFlag,
      'master_account_id': instance.accountId,
      'expense_dt_price': instance.expenseDtPrice,
      'expense_dt_qty': instance.expenseDtQty,
      'expense_dt_discount': instance.expenseDtDiscount,
      'expense_dt_netamnt': instance.expenseDtNetamnt,
      'is_cancel': instance.isCancel,
    };
