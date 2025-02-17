// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_receive_good_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentReceiveGoodDTModelImpl _$$DocumentReceiveGoodDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentReceiveGoodDTModelImpl(
      receiveDtId: json['receive_dt_id'] as String?,
      receiveHdId: json['receive_hd_id'] as String?,
      purchaseorderDtId: json['purchaseorder_dt_id'] as String?,
      receiveDtListno: json['receive_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      productName: json['master_product_name'] as String?,
      unitId: json['master_unit_id'] as String?,
      unitName: json['master_unit_name'] as String?,
      receiveDtVatFlag: json['receive_dt_vat_flag'] as bool?,
      accountId: json['master_account_id'] as String?,
      receiveDtPrice: json['receive_dt_price'] as String?,
      receiveDtQty: json['receive_dt_qty'] as String?,
      receiveDtDiscount: json['receive_dt_discount'] as String?,
      receiveDtNetamnt: json['receive_dt_netamnt'] as String?,
      receiveDtProductBarcodeId:
          json['receive_dt_master_product_barcode_id'] as String?,
      receiveDtProductBarcodeCode:
          json['receive_dt_master_product_barcode_code'] as String?,
      receiveDtProductBarcodeMasterUnitId:
          json['receive_dt_master_product_barcode_master_unit_id'] as String?,
      receiveDtProductBarcodeMasterUnitName:
          json['receive_dt_master_product_barcode_master_unit_name'] as String?,
      receiveDtProductBarcodeRate:
          json['receive_dt_master_product_barcode_rate'] as String?,
      purchaseorderHdDocuno: json['purchaseorder_hd_docuno'] as String?,
      receiveDtTankNo: json['receive_dt_tank_no'] as String?,
    );

Map<String, dynamic> _$$DocumentReceiveGoodDTModelImplToJson(
        _$DocumentReceiveGoodDTModelImpl instance) =>
    <String, dynamic>{
      'receive_dt_id': instance.receiveDtId,
      'receive_hd_id': instance.receiveHdId,
      'purchaseorder_dt_id': instance.purchaseorderDtId,
      'receive_dt_listno': instance.receiveDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_product_name': instance.productName,
      'master_unit_id': instance.unitId,
      'master_unit_name': instance.unitName,
      'receive_dt_vat_flag': instance.receiveDtVatFlag,
      'master_account_id': instance.accountId,
      'receive_dt_price': instance.receiveDtPrice,
      'receive_dt_qty': instance.receiveDtQty,
      'receive_dt_discount': instance.receiveDtDiscount,
      'receive_dt_netamnt': instance.receiveDtNetamnt,
      'receive_dt_master_product_barcode_id':
          instance.receiveDtProductBarcodeId,
      'receive_dt_master_product_barcode_code':
          instance.receiveDtProductBarcodeCode,
      'receive_dt_master_product_barcode_master_unit_id':
          instance.receiveDtProductBarcodeMasterUnitId,
      'receive_dt_master_product_barcode_master_unit_name':
          instance.receiveDtProductBarcodeMasterUnitName,
      'receive_dt_master_product_barcode_rate':
          instance.receiveDtProductBarcodeRate,
      'purchaseorder_hd_docuno': instance.purchaseorderHdDocuno,
      'receive_dt_tank_no': instance.receiveDtTankNo,
    };
