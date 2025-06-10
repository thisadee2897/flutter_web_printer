import 'package:flutter_web_printer/models/branch2.dart';
import 'package:flutter_web_printer/models/branch_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_report_h_q_vat_postt_sale_model.freezed.dart';
part 'detail_report_h_q_vat_postt_sale_model.g.dart';

@freezed
class DetailReportHQVatPosttSaleModel with _$DetailReportHQVatPosttSaleModel {
  const factory DetailReportHQVatPosttSaleModel({
    @JsonKey(name: 'vat_postt_sale_docudate') String? vatPosttSaleDocudate,
    @JsonKey(name: 'vat_postt_sale_docuno') String? vatPosttSaleDocuno,
    @JsonKey(name: 'vat_postt_sale_arcustomer_name') String? vatPosttSaleArcustomerName,
    @JsonKey(name: 'vat_postt_sale_arcustomer_taxid') String? vatPosttSaleArcustomerTaxid,
    @JsonKey(name: 'vat_postt_sale_arcustomer_branch_number') String? vatPosttSaleArcustomerBranchNumber,
    @JsonKey(name: 'salehd_paymenttype') String? salehdPaymenttype,
    @JsonKey(name: 'vat_postt_sale_baseamnt') String? vatPosttSaleBaseamnt,
    @JsonKey(name: 'vat_postt_sale_vatamnt') String? vatPosttSaleVatamnt,
    @JsonKey(name: 'vat_postt_sale_sumamnt') String? vatPosttSaleSumamnt,
    @JsonKey(name: 'vat_postt_sale_totalexcludeamnt') String? vatPosttSaleTotalexcludeamnt,
    @JsonKey(name: 'company_address') String? companyAddress,
    @JsonKey(name: 'branch') List<Branch2>? branchs,
    //listno
    @JsonKey(name: 'listno') int? listno,
  }) = _DetailReportHQVatPosttSaleModel;

  factory DetailReportHQVatPosttSaleModel.fromJson(Map<String, dynamic> json) => _$DetailReportHQVatPosttSaleModelFromJson(json);
}
