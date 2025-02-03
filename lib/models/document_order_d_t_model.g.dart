// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_order_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentOrderDTModelImpl _$$DocumentOrderDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentOrderDTModelImpl(
      orderDtId: json['order_dt_id'] as String?,
      orderHdId: json['order_hd_id'] as String?,
      quotationDtId: json['quotation_dt_id'] as String?,
      orderDtListno: json['order_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      unitId: json['master_unit_id'] as String?,
      orderDtProductBarcodeId:
          json['order_dt_master_product_barcode_id'] as String?,
      orderDtProductBarcodeCode:
          json['order_dt_master_product_barcode_code'] as String?,
      orderDtProductBarcodeName:
          json['order_dt_master_product_barcode_name'] as String?,
      orderDtProductBarcodeMasterUnitId:
          json['order_dt_master_product_barcode_master_unit_id'] as String?,
      orderDtProductBarcodeMasterUnitName:
          json['order_dt_master_product_barcode_master_unit_name'] as String?,
      orderDtProductBarcodeRate:
          json['order_dt_master_product_barcode_rate'] as String?,
      orderDtPrice: json['order_dt_price'] as String?,
      orderDtQty: json['order_dt_qty'] as String?,
      orderDtDiscount: json['order_dt_discount'] as String?,
      orderDtNetamnt: json['order_dt_netamnt'] as String?,
      orderDtVatFlag: json['order_dt_vat_flag'] as bool?,
      quotationHdDocuno: json['quotation_hd_docuno'] as String?,
    );

Map<String, dynamic> _$$DocumentOrderDTModelImplToJson(
        _$DocumentOrderDTModelImpl instance) =>
    <String, dynamic>{
      'order_dt_id': instance.orderDtId,
      'order_hd_id': instance.orderHdId,
      'quotation_dt_id': instance.quotationDtId,
      'order_dt_listno': instance.orderDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_unit_id': instance.unitId,
      'order_dt_master_product_barcode_id': instance.orderDtProductBarcodeId,
      'order_dt_master_product_barcode_code':
          instance.orderDtProductBarcodeCode,
      'order_dt_master_product_barcode_name':
          instance.orderDtProductBarcodeName,
      'order_dt_master_product_barcode_master_unit_id':
          instance.orderDtProductBarcodeMasterUnitId,
      'order_dt_master_product_barcode_master_unit_name':
          instance.orderDtProductBarcodeMasterUnitName,
      'order_dt_master_product_barcode_rate':
          instance.orderDtProductBarcodeRate,
      'order_dt_price': instance.orderDtPrice,
      'order_dt_qty': instance.orderDtQty,
      'order_dt_discount': instance.orderDtDiscount,
      'order_dt_netamnt': instance.orderDtNetamnt,
      'order_dt_vat_flag': instance.orderDtVatFlag,
      'quotation_hd_docuno': instance.quotationHdDocuno,
    };
