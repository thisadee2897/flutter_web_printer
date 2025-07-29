// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_inventory_requisition_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentInventoryRequisitionDTModelImpl
    _$$DocumentInventoryRequisitionDTModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DocumentInventoryRequisitionDTModelImpl(
          requisitionDtId: json['requisition_dt_id'] as String?,
          requisitionHdId: json['requisition_hd_id'] as String?,
          requisitionDtListno: json['requisition_dt_listno'] as num?,
          productId: json['master_product_id'] as String?,
          requisitionDtProductBarcodeId:
              json['requisition_dt_master_product_barcode_id'] as String?,
          requisitionDtProductBarcodeCode:
              json['requisition_dt_master_product_barcode_code'] as String?,
          requisitionDtProductBarcodeName:
              json['requisition_dt_master_product_barcode_name'] as String?,
          requisitionDtProductBarcodeMasterUnitId:
              json['requisition_dt_master_product_barcode_master_unit_id']
                  as String?,
          requisitionDtProductBarcodeMasterUnitName:
              json['requisition_dt_master_product_barcode_master_unit_name']
                  as String?,
          requisitionDtProductBarcodeRate:
              json['requisition_dt_master_product_barcode_rate'] as String?,
          requisitionDtQty: json['requisition_dt_qty'] as String?,
          requisitionDtPrice: json['requisition_dt_price'] as String?,
          requisitionDtAmount: json['requisition_dt_amount'] as String?,
          isCancel: json['is_cancel'] as bool?,
        );

Map<String, dynamic> _$$DocumentInventoryRequisitionDTModelImplToJson(
        _$DocumentInventoryRequisitionDTModelImpl instance) =>
    <String, dynamic>{
      'requisition_dt_id': instance.requisitionDtId,
      'requisition_hd_id': instance.requisitionHdId,
      'requisition_dt_listno': instance.requisitionDtListno,
      'master_product_id': instance.productId,
      'requisition_dt_master_product_barcode_id':
          instance.requisitionDtProductBarcodeId,
      'requisition_dt_master_product_barcode_code':
          instance.requisitionDtProductBarcodeCode,
      'requisition_dt_master_product_barcode_name':
          instance.requisitionDtProductBarcodeName,
      'requisition_dt_master_product_barcode_master_unit_id':
          instance.requisitionDtProductBarcodeMasterUnitId,
      'requisition_dt_master_product_barcode_master_unit_name':
          instance.requisitionDtProductBarcodeMasterUnitName,
      'requisition_dt_master_product_barcode_rate':
          instance.requisitionDtProductBarcodeRate,
      'requisition_dt_qty': instance.requisitionDtQty,
      'requisition_dt_price': instance.requisitionDtPrice,
      'requisition_dt_amount': instance.requisitionDtAmount,
      'is_cancel': instance.isCancel,
    };
