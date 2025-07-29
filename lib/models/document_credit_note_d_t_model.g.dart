// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_credit_note_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentCreditNoteDTModelImpl _$$DocumentCreditNoteDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentCreditNoteDTModelImpl(
      creditnoteDtId: json['creditnote_dt_id'] as String?,
      creditnoteHdId: json['creditnote_hd_id'] as String?,
      receiveDtId: json['receive_dt_id'] as String?,
      creditnoteDtListno: json['creditnote_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      unitId: json['master_unit_id'] as String?,
      creditnoteDtProductBarcodeId:
          json['creditnote_dt_master_product_barcode_id'] as String?,
      creditnoteDtProductBarcodeCode:
          json['creditnote_dt_master_product_barcode_code'] as String?,
      creditnoteDtProductBarcodeName:
          json['creditnote_dt_master_product_barcode_name'] as String?,
      creditnoteDtProductBarcodeMasterUnitId:
          json['creditnote_dt_master_product_barcode_master_unit_id']
              as String?,
      creditnoteDtProductBarcodeMasterUnitName:
          json['creditnote_dt_master_product_barcode_master_unit_name']
              as String?,
      creditnoteDtProductBarcodeRate:
          json['creditnote_dt_master_product_barcode_rate'] as String?,
      creditnoteDtPrice: json['creditnote_dt_price'] as String?,
      receiveDtQty: json['receive_dt_qty'] as String?,
      creditnoteDtQty: json['creditnote_dt_qty'] as String?,
      creditnoteDtDiscount: json['creditnote_dt_discount'] as String?,
      creditnoteDtNetamnt: json['creditnote_dt_netamnt'] as String?,
      accountId: json['master_account_id'] as String?,
      creditnoteDtVatFlag: json['creditnote_dt_vat_flag'] as bool?,
      receiveHdDocuno: json['receive_hd_docuno'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentCreditNoteDTModelImplToJson(
        _$DocumentCreditNoteDTModelImpl instance) =>
    <String, dynamic>{
      'creditnote_dt_id': instance.creditnoteDtId,
      'creditnote_hd_id': instance.creditnoteHdId,
      'receive_dt_id': instance.receiveDtId,
      'creditnote_dt_listno': instance.creditnoteDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_unit_id': instance.unitId,
      'creditnote_dt_master_product_barcode_id':
          instance.creditnoteDtProductBarcodeId,
      'creditnote_dt_master_product_barcode_code':
          instance.creditnoteDtProductBarcodeCode,
      'creditnote_dt_master_product_barcode_name':
          instance.creditnoteDtProductBarcodeName,
      'creditnote_dt_master_product_barcode_master_unit_id':
          instance.creditnoteDtProductBarcodeMasterUnitId,
      'creditnote_dt_master_product_barcode_master_unit_name':
          instance.creditnoteDtProductBarcodeMasterUnitName,
      'creditnote_dt_master_product_barcode_rate':
          instance.creditnoteDtProductBarcodeRate,
      'creditnote_dt_price': instance.creditnoteDtPrice,
      'receive_dt_qty': instance.receiveDtQty,
      'creditnote_dt_qty': instance.creditnoteDtQty,
      'creditnote_dt_discount': instance.creditnoteDtDiscount,
      'creditnote_dt_netamnt': instance.creditnoteDtNetamnt,
      'master_account_id': instance.accountId,
      'creditnote_dt_vat_flag': instance.creditnoteDtVatFlag,
      'receive_hd_docuno': instance.receiveHdDocuno,
      'is_cancel': instance.isCancel,
    };
