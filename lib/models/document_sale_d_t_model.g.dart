// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_sale_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentSaleDTModelImpl _$$DocumentSaleDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentSaleDTModelImpl(
      saleDtId: json['sale_dt_id'] as String?,
      saleHdId: json['sale_hd_id'] as String?,
      orderDtId: json['order_dt_id'] as String?,
      saleDtListno: json['sale_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      unitId: json['master_unit_id'] as String?,
      saleDtProductBarcodeId:
          json['sale_dt_master_product_barcode_id'] as String?,
      saleDtProductBarcodeCode:
          json['sale_dt_master_product_barcode_code'] as String?,
      saleDtProductBarcodeName:
          json['sale_dt_master_product_barcode_name'] as String?,
      saleDtProductBarcodeMasterUnitId:
          json['sale_dt_master_product_barcode_master_unit_id'] as String?,
      saleDtProductBarcodeMasterUnitName:
          json['sale_dt_master_product_barcode_master_unit_name'] as String?,
      saleDtProductBarcodeRate:
          json['sale_dt_master_product_barcode_rate'] as String?,
      saleDtPrice: json['sale_dt_price'] as String?,
      saleDtQty: json['sale_dt_qty'] as String?,
      saleDtDiscount: json['sale_dt_discount'] as String?,
      saleDtNetamnt: json['sale_dt_netamnt'] as String?,
      accountId: json['master_account_id'] as String?,
      saleDtVatFlag: json['sale_dt_vat_flag'] as bool?,
      saleDtQtyBalance: json['sale_dt_qty_balance'] as String?,
      orderHdDocuno: json['order_hd_docuno'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentSaleDTModelImplToJson(
        _$DocumentSaleDTModelImpl instance) =>
    <String, dynamic>{
      'sale_dt_id': instance.saleDtId,
      'sale_hd_id': instance.saleHdId,
      'order_dt_id': instance.orderDtId,
      'sale_dt_listno': instance.saleDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_unit_id': instance.unitId,
      'sale_dt_master_product_barcode_id': instance.saleDtProductBarcodeId,
      'sale_dt_master_product_barcode_code': instance.saleDtProductBarcodeCode,
      'sale_dt_master_product_barcode_name': instance.saleDtProductBarcodeName,
      'sale_dt_master_product_barcode_master_unit_id':
          instance.saleDtProductBarcodeMasterUnitId,
      'sale_dt_master_product_barcode_master_unit_name':
          instance.saleDtProductBarcodeMasterUnitName,
      'sale_dt_master_product_barcode_rate': instance.saleDtProductBarcodeRate,
      'sale_dt_price': instance.saleDtPrice,
      'sale_dt_qty': instance.saleDtQty,
      'sale_dt_discount': instance.saleDtDiscount,
      'sale_dt_netamnt': instance.saleDtNetamnt,
      'master_account_id': instance.accountId,
      'sale_dt_vat_flag': instance.saleDtVatFlag,
      'sale_dt_qty_balance': instance.saleDtQtyBalance,
      'order_hd_docuno': instance.orderHdDocuno,
      'is_cancel': instance.isCancel,
    };
