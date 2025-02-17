// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_inventory_adjust_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentInventoryAdjustDTModelImpl
    _$$DocumentInventoryAdjustDTModelImplFromJson(Map<String, dynamic> json) =>
        _$DocumentInventoryAdjustDTModelImpl(
          adjustDtId: json['adjust_dt_id'] as String?,
          adjustHdId: json['adjust_hd_id'] as String?,
          adjustDtListno: json['adjust_dt_listno'] as num?,
          productId: json['master_product_id'] as String?,
          adjustDtProductBarcodeId:
              json['adjust_dt_master_product_barcode_id'] as String?,
          adjustDtProductBarcodeCode:
              json['adjust_dt_master_product_barcode_code'] as String?,
          adjustDtProductBarcodeName:
              json['adjust_dt_master_product_barcode_name'] as String?,
          adjustDtProductBarcodeMasterUnitId:
              json['adjust_dt_master_product_barcode_master_unit_id']
                  as String?,
          adjustDtProductBarcodeMasterUnitName:
              json['adjust_dt_master_product_barcode_master_unit_name']
                  as String?,
          adjustDtProductBarcodeRate:
              json['adjust_dt_master_product_barcode_rate'] as String?,
          adjustDtFlag: json['adjust_dt_flag'] as num?,
          adjustDtQty: json['adjust_dt_qty'] as String?,
          adjustDtPrice: json['adjust_dt_price'] as String?,
          adjustDtAmount: json['adjust_dt_amount'] as String?,
        );

Map<String, dynamic> _$$DocumentInventoryAdjustDTModelImplToJson(
        _$DocumentInventoryAdjustDTModelImpl instance) =>
    <String, dynamic>{
      'adjust_dt_id': instance.adjustDtId,
      'adjust_hd_id': instance.adjustHdId,
      'adjust_dt_listno': instance.adjustDtListno,
      'master_product_id': instance.productId,
      'adjust_dt_master_product_barcode_id': instance.adjustDtProductBarcodeId,
      'adjust_dt_master_product_barcode_code':
          instance.adjustDtProductBarcodeCode,
      'adjust_dt_master_product_barcode_name':
          instance.adjustDtProductBarcodeName,
      'adjust_dt_master_product_barcode_master_unit_id':
          instance.adjustDtProductBarcodeMasterUnitId,
      'adjust_dt_master_product_barcode_master_unit_name':
          instance.adjustDtProductBarcodeMasterUnitName,
      'adjust_dt_master_product_barcode_rate':
          instance.adjustDtProductBarcodeRate,
      'adjust_dt_flag': instance.adjustDtFlag,
      'adjust_dt_qty': instance.adjustDtQty,
      'adjust_dt_price': instance.adjustDtPrice,
      'adjust_dt_amount': instance.adjustDtAmount,
    };
