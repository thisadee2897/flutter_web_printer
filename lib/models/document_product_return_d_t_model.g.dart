// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_product_return_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentProductReturnDTModelImpl _$$DocumentProductReturnDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentProductReturnDTModelImpl(
      returnproductDtId: json['returnproduct_dt_id'] as String?,
      returnproductHdId: json['returnproduct_hd_id'] as String?,
      saleDtId: json['sale_dt_id'] as String?,
      returnproductDtListno: json['returnproduct_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      unitId: json['master_unit_id'] as String?,
      returnproductDtProductBarcodeId:
          json['returnproduct_dt_master_product_barcode_id'] as String?,
      returnproductDtProductBarcodeCode:
          json['returnproduct_dt_master_product_barcode_code'] as String?,
      returnproductDtProductBarcodeName:
          json['returnproduct_dt_master_product_barcode_name'] as String?,
      returnproductDtProductBarcodeMasterUnitId:
          json['returnproduct_dt_master_product_barcode_master_unit_id']
              as String?,
      returnproductDtProductBarcodeMasterUnitName:
          json['returnproduct_dt_master_product_barcode_master_unit_name']
              as String?,
      returnproductDtProductBarcodeRate:
          json['returnproduct_dt_master_product_barcode_rate'] as String?,
      returnproductDtPrice: json['returnproduct_dt_price'] as String?,
      saleDtQty: json['sale_dt_qty'] as String?,
      returnproductDtQty: json['returnproduct_dt_qty'] as String?,
      returnproductDtNetamnt: json['returnproduct_dt_netamnt'] as String?,
      accountId: json['master_account_id'] as String?,
      returnproductDtVatFlag: json['returnproduct_dt_vat_flag'] as bool?,
      returnproductDtDiscount: json['returnproduct_dt_discount'] as String?,
      saleHdDocuno: json['sale_hd_docuno'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentProductReturnDTModelImplToJson(
        _$DocumentProductReturnDTModelImpl instance) =>
    <String, dynamic>{
      'returnproduct_dt_id': instance.returnproductDtId,
      'returnproduct_hd_id': instance.returnproductHdId,
      'sale_dt_id': instance.saleDtId,
      'returnproduct_dt_listno': instance.returnproductDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_unit_id': instance.unitId,
      'returnproduct_dt_master_product_barcode_id':
          instance.returnproductDtProductBarcodeId,
      'returnproduct_dt_master_product_barcode_code':
          instance.returnproductDtProductBarcodeCode,
      'returnproduct_dt_master_product_barcode_name':
          instance.returnproductDtProductBarcodeName,
      'returnproduct_dt_master_product_barcode_master_unit_id':
          instance.returnproductDtProductBarcodeMasterUnitId,
      'returnproduct_dt_master_product_barcode_master_unit_name':
          instance.returnproductDtProductBarcodeMasterUnitName,
      'returnproduct_dt_master_product_barcode_rate':
          instance.returnproductDtProductBarcodeRate,
      'returnproduct_dt_price': instance.returnproductDtPrice,
      'sale_dt_qty': instance.saleDtQty,
      'returnproduct_dt_qty': instance.returnproductDtQty,
      'returnproduct_dt_netamnt': instance.returnproductDtNetamnt,
      'master_account_id': instance.accountId,
      'returnproduct_dt_vat_flag': instance.returnproductDtVatFlag,
      'returnproduct_dt_discount': instance.returnproductDtDiscount,
      'sale_hd_docuno': instance.saleHdDocuno,
      'is_cancel': instance.isCancel,
    };
