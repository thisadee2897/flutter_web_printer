import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/detail_report_h_q_vat_postt_sale_model.dart';
import 'package:flutter_web_printer/models/h_d_report_h_q_vat_postt_sale_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorReportHQVatPosttSale {
  Future<pw.Page> generate({
    required HDReportHQVatPosttSaleModel hd,
    required List<DetailReportHQVatPosttSaleModel> dt,
    required CompanyModel company,
    Map<String, num>? summary,
  }) async {
    // Uint8List? imageBytesFormNetwork = await getImageBytes(company.companyLogo);
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = pw.Font.ttf(data.buffer.asByteData());
    final ByteData dataBold = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    final fontBold = pw.Font.ttf(dataBold.buffer.asByteData());
    var textStyleNormal = pw.TextStyle(
      fontSize: 14,
      fontWeight: pw.FontWeight.normal,
      color: PdfColors.black,
      font: font,
    );
    var textStyleBold = pw.TextStyle(
      fontSize: 14,
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.black,
      font: fontBold,
    );
    return pw.Page(
      pageFormat: PdfPageFormat.a4.landscape,
      margin: const pw.EdgeInsets.only(left: 2, right: 2, top: 10, bottom: 2),
      orientation: pw.PageOrientation.landscape,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            // Header
            pw.Text(
              "รายงานภาษีขาย",
              style: textStyleBold.copyWith(fontSize: 20),
            ),
            pw.Text(
              "${hd.startDate.dateFullTHFormApi} ถึง ${hd.endDate.dateFullTHFormApi}",
              style: textStyleBold,
            ),
            pw.Container(
              // padding: const pw.EdgeInsets.all(10),
              margin: const pw.EdgeInsets.only(left: 14, right: 14),
              width: double.infinity,
              height: dt.length == 20 ? 485 : null,
              decoration: pw.BoxDecoration(
                // color: PdfColor.fromHex("#FFFFFF"),
                // border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                borderRadius: pw.BorderRadius.circular(12),
              ),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Row(
                    mainAxisSize: pw.MainAxisSize.max,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Expanded(
                        flex: 1,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(right: 0.0),
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            mainAxisSize: pw.MainAxisSize.max,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(
                                width: double.infinity,
                                child: pw.Row(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  children: [
                                    pw.Text('ชื่อผู้ประกอบการ : ', style: textStyleNormal),
                                    pw.Text(hd.companyName ?? '-', style: textStyleBold),
                                  ],
                                ),
                              ),
                              pw.SizedBox(
                                width: double.infinity,
                                child: pw.Row(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  children: [
                                    pw.Text('ชื่อสถานประกอบการ : ', style: textStyleNormal),
                                    pw.Text(hd.companyName ?? '-', style: textStyleBold),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 1,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 8.0, right: 8.0),
                          child: pw.Column(
                            mainAxisSize: pw.MainAxisSize.max,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.SizedBox(
                                width: double.infinity,
                                child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text('เลขประจำตัวผู้เสียภาษีอากร : ', style: textStyleNormal),
                                    // 0105566144399 ใส่กรอบ 4 เหลี่ยม 
                                    pw.Container(
                                      padding: const pw.EdgeInsets.all(2),
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(color: PdfColors.black, width: 0.5),
                                        borderRadius: pw.BorderRadius.circular(4),
                                      ),
                                      child: pw.Text(
                                        hd.companyTaxid ?? '-',
                                        style: textStyleBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              pw.SizedBox(
                                width: double.infinity,
                                // Generate Branchs Name
                                child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  mainAxisSize: pw.MainAxisSize.max,
                                  children: List.generate(
                                    hd.branchsName!.length,
                                    (index) {
                                      var item = hd.branchsName![index];
                                      return pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 12.0),
                                        child: pw.Row(
                                          children: [
                                            pw.SvgImage(svg: svgTrue),
                                            pw.SizedBox(width: 5),
                                            pw.Text(
                                              "สาขา $item",
                                              style: textStyleBold,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 10),
                  // Table
                  pw.Table(
                    border: pw.TableBorder.all(
                      color: PdfColor.fromHex("#000000"),
                      width: 0.5,
                      style: pw.BorderStyle.solid,
                    ),
                    columnWidths: const {
                      0: pw.FlexColumnWidth(1),
                      1: pw.FlexColumnWidth(2),
                      2: pw.FlexColumnWidth(4),
                      3: pw.FlexColumnWidth(4),
                      4: pw.FlexColumnWidth(4),
                      5: pw.FlexColumnWidth(3),
                      6: pw.FlexColumnWidth(3),
                      7: pw.FlexColumnWidth(2),
                      8: pw.FlexColumnWidth(2),
                      9: pw.FlexColumnWidth(2),
                    },
                    children: [
                      // Header Row

                      pw.TableRow(
                        children: [
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'ลำดับ',
                                  textAlign: pw.TextAlign.center,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'วัน/เดือน/ปี\nใบกำกับภาษี',
                                  textAlign: pw.TextAlign.center,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'เลขที่\nใบกำกับภาษี',
                                  textAlign: pw.TextAlign.center,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'ชื่อผู้ซื้อสินค้า/ผู้รับบริการ',
                                  textAlign: pw.TextAlign.center,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  maxLines: 2,
                                  'เลขประจำตัวผู้เสียภาษีอากร\nของผู้ชื้อสินค้า/ผู้รับบริการ',
                                  textAlign: pw.TextAlign.center,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'สถานประกอบการ',
                                  textAlign: pw.TextAlign.start,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'ช่องทางการชำระเงิน',
                                  textAlign: pw.TextAlign.start,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'มูลค่าสินค้า\nหรือบริการ',
                                  textAlign: pw.TextAlign.center,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'จำนวน\nเงินภาษี',
                                  textAlign: pw.TextAlign.end,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            height: 40,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Center(
                                child: pw.Text(
                                  'จำนวนเงินรวม\nภาษีมูลค่าเพิ่ม',
                                  textAlign: pw.TextAlign.end,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Data Rows
                      ...List.generate(
                        dt.length,
                        (index) {
                          final item = dt[index];
                          return pw.TableRow(
                            children: [
                              pw.SizedBox(
                                height: 20,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse((item.listno).toString()).digits(0),
                                    textAlign: pw.TextAlign.center,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 60,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    (item.vatPosttSaleDocudate).dateTHFormApi,
                                    textAlign: pw.TextAlign.start,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 130,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    maxLines: 1,
                                    overflow: pw.TextOverflow.visible,
                                    "${item.vatPosttSaleDocuno}",
                                    textAlign: pw.TextAlign.start,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.Expanded(
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    item.vatPosttSaleArcustomerName ?? '-',
                                    textAlign: pw.TextAlign.start,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 100,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    item.vatPosttSaleArcustomerTaxid ?? '-',
                                    textAlign: pw.TextAlign.start,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 80,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    item.vatPosttSaleArcustomerBranchNumber ?? '-',
                                    textAlign: pw.TextAlign.start,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 80,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    item.salehdPaymenttype ?? '-',
                                    textAlign: pw.TextAlign.start,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 60,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.vatPosttSaleBaseamnt.toString()).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 60,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.vatPosttSaleVatamnt.toString()).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                              pw.SizedBox(
                                width: 60,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.vatPosttSaleSumamnt.toString()).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: textStyleNormal,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            if (summary != null)
              pw.Container(
                padding: const pw.EdgeInsets.only(right: 14),
                height: 24,
                // color: PdfColor.fromHex("#ECF7FF"),
                width: double.infinity,
                child: pw.Row(
                  children: [
                    pw.Expanded(
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                        child: pw.Text(
                          '',
                          textAlign: pw.TextAlign.center,
                          style: textStyleNormal,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 80,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                        child: pw.Text(
                          'รวมทั้งสิ้น',
                          textAlign: pw.TextAlign.start,
                          style: textStyleBold,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 60,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                        child: pw.Text(
                          // sum Data
                          summary['Baseamnt'].digits(2),
                          textAlign: pw.TextAlign.end,
                          style: textStyleBold,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 60,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                        child: pw.Text(
                          // sum Data
                          summary['Vatamnt'].digits(2),
                          textAlign: pw.TextAlign.end,
                          style: textStyleBold,
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 60,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                        child: pw.Text(
                          // sum Data
                          summary['Sumamnt'].digits(2),
                          textAlign: pw.TextAlign.end,
                          style: textStyleBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
