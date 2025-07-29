// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_quotation_d_t_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentQuotationDTModelImpl _$$DocumentQuotationDTModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentQuotationDTModelImpl(
      quotationDtId: json['quotation_dt_id'] as String?,
      quotationHdId: json['quotation_hd_id'] as String?,
      quotationDtListno: json['quotation_dt_listno'] as num?,
      productId: json['master_product_id'] as String?,
      productCode: json['master_product_code'] as String?,
      unitId: json['master_unit_id'] as String?,
      quotationDtProductBarcodeId:
          json['quotation_dt_master_product_barcode_id'] as String?,
      quotationDtProductBarcodeCode:
          json['quotation_dt_master_product_barcode_code'] as String?,
      quotationDtProductBarcodeName:
          json['quotation_dt_master_product_barcode_name'] as String?,
      quotationDtProductBarcodeMasterUnitId:
          json['quotation_dt_master_product_barcode_master_unit_id'] as String?,
      quotationDtProductBarcodeMasterUnitName:
          json['quotation_dt_master_product_barcode_master_unit_name']
              as String?,
      quotationDtProductBarcodeRate:
          json['quotation_dt_master_product_barcode_rate'] as String?,
      quotationDtPrice: json['quotation_dt_price'] as String?,
      quotationDtQty: json['quotation_dt_qty'] as String?,
      quotationDtDiscount: json['quotation_dt_discount'] as String?,
      quotationDtNetamnt: json['quotation_dt_netamnt'] as String?,
      isCancel: json['is_cancel'] as bool?,
    );

Map<String, dynamic> _$$DocumentQuotationDTModelImplToJson(
        _$DocumentQuotationDTModelImpl instance) =>
    <String, dynamic>{
      'quotation_dt_id': instance.quotationDtId,
      'quotation_hd_id': instance.quotationHdId,
      'quotation_dt_listno': instance.quotationDtListno,
      'master_product_id': instance.productId,
      'master_product_code': instance.productCode,
      'master_unit_id': instance.unitId,
      'quotation_dt_master_product_barcode_id':
          instance.quotationDtProductBarcodeId,
      'quotation_dt_master_product_barcode_code':
          instance.quotationDtProductBarcodeCode,
      'quotation_dt_master_product_barcode_name':
          instance.quotationDtProductBarcodeName,
      'quotation_dt_master_product_barcode_master_unit_id':
          instance.quotationDtProductBarcodeMasterUnitId,
      'quotation_dt_master_product_barcode_master_unit_name':
          instance.quotationDtProductBarcodeMasterUnitName,
      'quotation_dt_master_product_barcode_rate':
          instance.quotationDtProductBarcodeRate,
      'quotation_dt_price': instance.quotationDtPrice,
      'quotation_dt_qty': instance.quotationDtQty,
      'quotation_dt_discount': instance.quotationDtDiscount,
      'quotation_dt_netamnt': instance.quotationDtNetamnt,
      'is_cancel': instance.isCancel,
    };
