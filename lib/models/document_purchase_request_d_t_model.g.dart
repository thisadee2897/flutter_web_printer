// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_purchase_request_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentPurchaseRequestDTModelImpl
    _$$DocumentPurchaseRequestDTModelImplFromJson(Map<String, dynamic> json) =>
        _$DocumentPurchaseRequestDTModelImpl(
          purchaserequestDtId: json['purchaserequest_dt_id'] as String?,
          purchaserequestHdId: json['purchaserequest_hd_id'] as String?,
          purchaserequestDtListno: json['purchaserequest_dt_listno'] as num?,
          productId: json['master_product_id'] as String?,
          productCode: json['master_product_code'] as String?,
          productName: json['master_product_name'] as String?,
          unitId: json['master_unit_id'] as String?,
          unitName: json['master_unit_name'] as String?,
          purchaserequestDtPrice: json['purchaserequest_dt_price'] as String?,
          purchaserequestDtQty: json['purchaserequest_dt_qty'] as String?,
          purchaserequestDtDiscount:
              json['purchaserequest_dt_discount'] as String?,
          purchaserequestDtNetamnt:
              json['purchaserequest_dt_netamnt'] as String?,
          purchaserequestDtProductBarcodeId:
              json['purchaserequest_dt_master_product_barcode_id'] as String?,
          purchaserequestDtProductBarcodeCode:
              json['purchaserequest_dt_master_product_barcode_code'] as String?,
          purchaserequestDtProductBarcodeMasterUnitId:
              json['purchaserequest_dt_master_product_barcode_master_unit_id']
                  as String?,
          purchaserequestDtProductBarcodeMasterUnitName:
              json['purchaserequest_dt_master_product_barcode_master_unit_name']
                  as String?,
          purchaserequestDtProductBarcodeRate:
              json['purchaserequest_dt_master_product_barcode_rate'] as String?,
          isCancel: json['is_cancel'] as bool?,
        );

Map<String, dynamic> _$$DocumentPurchaseRequestDTModelImplToJson(
        _$DocumentPurchaseRequestDTModelImpl instance) =>
    <String, dynamic>{
      'purchaserequest_dt_id': instance.purchaserequestDtId,
      'purchaserequest_hd_id': instance.purchaserequestHdId,
      'purchaserequest_dt_listno': instance.purchaserequestDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_product_name': instance.productName,
      'master_unit_id': instance.unitId,
      'master_unit_name': instance.unitName,
      'purchaserequest_dt_price': instance.purchaserequestDtPrice,
      'purchaserequest_dt_qty': instance.purchaserequestDtQty,
      'purchaserequest_dt_discount': instance.purchaserequestDtDiscount,
      'purchaserequest_dt_netamnt': instance.purchaserequestDtNetamnt,
      'purchaserequest_dt_master_product_barcode_id':
          instance.purchaserequestDtProductBarcodeId,
      'purchaserequest_dt_master_product_barcode_code':
          instance.purchaserequestDtProductBarcodeCode,
      'purchaserequest_dt_master_product_barcode_master_unit_id':
          instance.purchaserequestDtProductBarcodeMasterUnitId,
      'purchaserequest_dt_master_product_barcode_master_unit_name':
          instance.purchaserequestDtProductBarcodeMasterUnitName,
      'purchaserequest_dt_master_product_barcode_rate':
          instance.purchaserequestDtProductBarcodeRate,
      'is_cancel': instance.isCancel,
    };
