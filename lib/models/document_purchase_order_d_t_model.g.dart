// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_purchase_order_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPurchaseOrderDTModelImpl _$$DocumentPurchaseOrderDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentPurchaseOrderDTModelImpl(
      purchaseorderDtId: json['purchaseorder_dt_id'] as String?,
      purchaseorderHdId: json['purchaseorder_hd_id'] as String?,
      purchaserequestDtId: json['purchaserequest_dt_id'] as String?,
      purchaseorderDtListno: json['purchaseorder_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      productName: json['master_product_name'] as String?,
      unitId: json['master_unit_id'] as String?,
      unitName: json['master_unit_name'] as String?,
      purchaseorderDtVatFlag: json['purchaseorder_dt_vat_flag'] as bool?,
      purchaseorderDtPrice: json['purchaseorder_dt_price'] as String?,
      purchaseorderDtQty: json['purchaseorder_dt_qty'] as String?,
      purchaseorderDtDiscount: json['purchaseorder_dt_discount'] as String?,
      purchaseorderDtNetamnt: json['purchaseorder_dt_netamnt'] as String?,
      purchaserequestHdDocuno: json['purchaserequest_hd_docuno'] as String?,
      purchaseorderDtProductBarcodeId:
          json['purchaseorder_dt_master_product_barcode_id'] as String?,
      purchaseorderDtProductBarcodeCode:
          json['purchaseorder_dt_master_product_barcode_code'] as String?,
      purchaseorderDtProductBarcodeMasterUnitId:
          json['purchaseorder_dt_master_product_barcode_master_unit_id']
              as String?,
      purchaseorderDtProductBarcodeMasterUnitName:
          json['purchaseorder_dt_master_product_barcode_master_unit_name']
              as String?,
      purchaseorderDtProductBarcodeRate:
          json['purchaseorder_dt_master_product_barcode_rate'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentPurchaseOrderDTModelImplToJson(
        _$DocumentPurchaseOrderDTModelImpl instance) =>
    <String, dynamic>{
      'purchaseorder_dt_id': instance.purchaseorderDtId,
      'purchaseorder_hd_id': instance.purchaseorderHdId,
      'purchaserequest_dt_id': instance.purchaserequestDtId,
      'purchaseorder_dt_listno': instance.purchaseorderDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_product_name': instance.productName,
      'master_unit_id': instance.unitId,
      'master_unit_name': instance.unitName,
      'purchaseorder_dt_vat_flag': instance.purchaseorderDtVatFlag,
      'purchaseorder_dt_price': instance.purchaseorderDtPrice,
      'purchaseorder_dt_qty': instance.purchaseorderDtQty,
      'purchaseorder_dt_discount': instance.purchaseorderDtDiscount,
      'purchaseorder_dt_netamnt': instance.purchaseorderDtNetamnt,
      'purchaserequest_hd_docuno': instance.purchaserequestHdDocuno,
      'purchaseorder_dt_master_product_barcode_id':
          instance.purchaseorderDtProductBarcodeId,
      'purchaseorder_dt_master_product_barcode_code':
          instance.purchaseorderDtProductBarcodeCode,
      'purchaseorder_dt_master_product_barcode_master_unit_id':
          instance.purchaseorderDtProductBarcodeMasterUnitId,
      'purchaseorder_dt_master_product_barcode_master_unit_name':
          instance.purchaseorderDtProductBarcodeMasterUnitName,
      'purchaseorder_dt_master_product_barcode_rate':
          instance.purchaseorderDtProductBarcodeRate,
      'is_cancel': instance.isCancel,
    };
