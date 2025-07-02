import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:flutter_web_printer/screens/sale_cash/views/widgets/pdf_for_sale_cash_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorSaleCredit {
  Future<pw.Page> generate({required DocumentSaleModel hd, required List<DocumentSaleDTModel> dt, required CompanyModel company}) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(company.companyLogo);
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
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            // เพิ่ม Header
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 16, right: 16, top: 20),
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                mainAxisSize: pw.MainAxisSize.max,
                children: [
                  pw.Container(
                    width: 250,
                    height: 50,
                    child: (imageBytesFormNetwork != null)
                        ? pw.Image(
                            alignment: pw.Alignment.topLeft,
                            fit: pw.BoxFit.fitHeight,
                            pw.MemoryImage(imageBytesFormNetwork),
                            width: 250,
                            height: 50,
                          )
                        : pw.Container(),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(right: 10),
                    child: pw.SizedBox(
                      height: 65,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Text(
                            hd.title ?? "ใบเสร็จรับเงิน",
                            style: pw.TextStyle(
                              font: font,
                              color: PdfColors.black,
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.RichText(
                              text: pw.TextSpan(children: [
                            pw.TextSpan(
                              text: "${company.companyName}",
                              style: textStyleNormal.copyWith(fontSize: 11),
                            ),
                          ])),
                          pw.RichText(
                              text: pw.TextSpan(children: [
                            pw.TextSpan(
                              text: "${company.companyAddress}${company.addrDistrictName}",
                              style: textStyleNormal.copyWith(fontSize: 11),
                            ),
                            pw.TextSpan(
                              text: " ${company.addrPrefectureName} ${company.addrProvinceName} ${company.addrPostcodeCode}",
                              style: textStyleNormal.copyWith(fontSize: 11),
                            ),
                          ])),
                          pw.RichText(
                            text: pw.TextSpan(
                              children: [
                                pw.TextSpan(
                                  text: "${company.companyTel}",
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                ),
                                pw.TextSpan(
                                  text: " เลขประจำตัวผู้เสียภาษี: ${company.companyTaxid}",
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          // pw.Text("${company.companyName}", style: textStyleNormal),
                          // pw.Text("${company.companyAddress}${company.addrDistrictName}", style: textStyleNormal),
                          // pw.Text("${company.addrPrefectureName} ${company.addrProvinceName} ${company.addrPostcodeCode}", style: textStyleNormal),
                          // pw.Text("${company.companyTel}", style: textStyleNormal),
                          // pw.Text("เลขประจำตัวผู้เสียภาษี: ${company.companyTaxid}", style: textStyleNormal),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Container(
              padding: const pw.EdgeInsets.all(10),
              margin: const pw.EdgeInsets.only(left: 20, right: 20),
              width: 550,
              height: 560,
              // height: 588,
              decoration: pw.BoxDecoration(
                color: PdfColor.fromHex("#FFFFFF"),
                border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                borderRadius: pw.BorderRadius.circular(12),
              ),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('Billed to', style: textStyleNormal),
                            pw.Text(hd.contactName.toString(), style: textStyleBold),
                            pw.Text(hd.contactAddress.toString(), style: textStyleNormal),
                            pw.Text("เบอร์ติดต่อ : ${hd.contactTel}", style: textStyleNormal),
                            pw.Text('เลขประจำตัวผู้เสียภาษี ', style: textStyleNormal),
                            pw.Text(hd.contactTaxid.toString(), style: textStyleBold),
                          ],
                        ),
                      ),
                      pw.Expanded(
                        flex: 1,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 8.0),
                          child: pw.Column(
                            mainAxisSize: pw.MainAxisSize.max,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.SizedBox(
                                height: 32,
                                width: double.infinity,
                                child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Text('เลขที่', style: textStyleNormal),
                                    pw.Text(hd.saleHdDocuno.toString(), style: textStyleBold),
                                  ],
                                ),
                              ),
                              pw.SizedBox(
                                height: 32,
                                width: double.infinity,
                                child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Text('วันที่', style: textStyleNormal),
                                    pw.Text(hd.saleHdDocudate.dateTHFormApi, style: textStyleBold),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 10),
                  pw.Container(
                    padding: const pw.EdgeInsets.only(right: 8),
                    height: 28,
                    width: 531,
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex("#ECF7FF"),
                      borderRadius: pw.BorderRadius.circular(3),
                    ),
                    child: pw.Row(
                      children: [
                        pw.SizedBox(
                          width: 30,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'ลำดับ',
                              textAlign: pw.TextAlign.center,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'รหัส',
                              textAlign: pw.TextAlign.start,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'รายการ',
                              textAlign: pw.TextAlign.start,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.Container(
                          width: 50,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'จำนวน',
                              textAlign: pw.TextAlign.end,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.Container(
                          width: 60,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              ' ราคา',
                              textAlign: pw.TextAlign.end,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 80,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              ' มูลค่าสุทธิ',
                              textAlign: pw.TextAlign.end,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    child: pw.ListView.builder(
                      itemCount: dt.length,
                      itemBuilder: (context, index) {
                        return pw.Center(
                          child: pw.Container(
                            padding: const pw.EdgeInsets.only(right: 8),
                            height: 18,
                            color: index.isOdd ? PdfColor.fromHex("#F9F8F9") : PdfColor.fromHex("#FFFFFF"),
                            width: 531,
                            child: pw.Row(
                              children: [
                                pw.SizedBox(
                                  width: 30,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      dt[index].saleDtListno.digits(0),
                                      textAlign: pw.TextAlign.center,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 100,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      "${dt[index].saleDtProductBarcodeCode}",
                                      textAlign: pw.TextAlign.start,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.Expanded(
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      maxLines: 1,
                                      overflow: pw.TextOverflow.visible,
                                      "${dt[index].saleDtProductBarcodeName}",
                                      textAlign: pw.TextAlign.start,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 50,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      num.parse(dt[index].saleDtQty ?? '0').digitsConfig,
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
                                      num.parse(dt[index].saleDtPrice ?? '0').digitsConfig,
                                      textAlign: pw.TextAlign.end,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 80,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      num.parse(dt[index].saleDtNetamnt ?? '0').digits(2),
                                      textAlign: pw.TextAlign.end,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  pw.Center(
                    child: pw.SizedBox(
                      width: 531,
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            children: [
                              pw.Expanded(flex: 1, child: pw.Container()),
                              pw.Expanded(
                                flex: 1,
                                child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.Text(
                                      'Total',
                                      style: textStyleBold,
                                    ),
                                    pw.Padding(
                                      padding: const pw.EdgeInsets.only(right: 10),
                                      child: pw.Text(
                                        num.parse(hd.saleHdAmount ?? '0').digits(2),
                                        style: textStyleBold.copyWith(color: PdfColor.fromHex("#0064B0")),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(height: 3, color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text('จำนวนเงิน (ตัวอักษร)', style: textStyleNormal),
                                  pw.Text(NumberToThaiWords.convert(double.parse(hd.saleHdNetamnt ?? '0')), style: textStyleBold),
                                ],
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(right: 10),
                                child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Text('รวมทั้งสิ้น', style: textStyleNormal),
                                    pw.Text(double.parse(hd.saleHdNetamnt ?? '0').digits(2), style: textStyleBold),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(height: 0.5, color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Expanded(
                                flex: 1,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(right: 30),
                                  child: pw.Column(
                                    mainAxisAlignment: pw.MainAxisAlignment.start,
                                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text('จำนวนวันเครดิต', style: textStyleNormal),
                                      pw.Text("${hd.saleHdCreditday.digits(0)} วัน", style: textStyleBold),
                                    ],
                                  ),
                                ),
                              ),
                              pw.Expanded(
                                flex: 1,
                                child: pw.Column(
                                  children: [
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text('สินค้าที่ได้รับยกเว้นภาษีมูลค่าเพิ่ม', style: textStyleBold),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(num.parse(hd.saleHdTotalexcludeamnt ?? '0').digits(2), style: textStyleBold),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text('สินค้าที่ต้องเสียภาษีมูลค่าเพิ่ม', style: textStyleBold),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(num.parse(hd.saleHdBaseamnt ?? '0').digits(2), style: textStyleBold),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text('ภาษีมูลค่าเพิ่ม (7%)', style: textStyleBold),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(num.parse(hd.saleHdVatamnt ?? '0').digits(2), style: textStyleBold),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text('มูลค่าสุทธิ', style: textStyleBold),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(num.parse(hd.saleHdNetamnt ?? '0').digits(2), style: textStyleBold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // pw.SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // pw.SizedBox(height: 20),
            pw.SizedBox(
              width: 550,
              child: pw.Padding(
                padding: const pw.EdgeInsets.only(right: 20),
                child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.SizedBox(
                      width: 50,
                      child: pw.Text(maxLines: 2, overflow: pw.TextOverflow.visible, textAlign: pw.TextAlign.right, 'หมายเหตุ : ', style: textStyleNormal),
                    ),
                    pw.Expanded(
                      child: pw.Text(
                        maxLines: 2,
                        overflow: pw.TextOverflow.visible,
                        hd.saleHdRemark ?? '-',
                        style: textStyleNormal.copyWith(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (hd.khodpunFooter == true)
              pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.only(left: 20, right: 20, top: 10),
                  // decoration: pw.BoxDecoration(
                  //   borderRadius: pw.BorderRadius.circular(10),
                  //   border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                  // ),
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Container(
                          decoration: pw.BoxDecoration(
                            borderRadius: pw.BorderRadius.circular(10),
                            border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                          ),
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.all(8.0),
                            child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              children: [
                                pw.Text(
                                  khodpunFooter['title_th'] ?? '',
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                  textAlign: pw.TextAlign.start,
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.start,
                                  "THE 'TITLE OF THE GOODS' BELONGS TO ${(company.companyNameEng ?? '').toUpperCase()} ${khodpunFooter['title_en'] ?? ''}",
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                ),
                                pw.Expanded(
                                  // height: 100,
                                  child: pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                                    children: [
                                      pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.Text(".............................................................................",
                                              style: textStyleNormal.copyWith(fontSize: 11)),
                                          pw.Text(khodpunFooter['received_by'] ?? '', style: textStyleNormal.copyWith(fontSize: 11)),
                                          pw.Text('วันที่/DATE................../................../..................',
                                              style: textStyleNormal.copyWith(fontSize: 11)),
                                        ],
                                      ),
                                      pw.Column(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                                        children: [
                                          pw.Text(".............................................................................",
                                              style: textStyleNormal.copyWith(fontSize: 11)),
                                          pw.Text(khodpunFooter['delivered_by'] ?? '', style: textStyleNormal.copyWith(fontSize: 11)),
                                          pw.Text('วันที่/DATE................../................../..................',
                                              style: textStyleNormal.copyWith(fontSize: 11)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Text(
                                  khodpunFooter['footer_th'] ?? '',
                                  style: textStyleNormal.copyWith(fontSize: 12),
                                  textAlign: pw.TextAlign.center,
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.center,
                                  khodpunFooter['footer_en'] ?? '',
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      pw.SizedBox(width: 10),
                      pw.Expanded(
                        flex: 1,
                        child: pw.Container(
                          decoration: pw.BoxDecoration(
                            borderRadius: pw.BorderRadius.circular(10),
                            border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                          ),
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.all(8.0),
                            child: pw.Column(
                              children: [
                                pw.Text(
                                  (company.companyName ?? ""),
                                  style: textStyleBold.copyWith(fontSize: 12, fontWeight: pw.FontWeight.bold),
                                  textAlign: pw.TextAlign.center,
                                ),
                                pw.Text(
                                  (company.companyNameEng ?? "").toUpperCase(),
                                  style: textStyleBold.copyWith(fontSize: 12, fontWeight: pw.FontWeight.bold),
                                  textAlign: pw.TextAlign.center,
                                ),
                                pw.Expanded(child: pw.Container()),
                                pw.Text(
                                  maxLines: 1,
                                  overflow: pw.TextOverflow.visible,
                                  "............................................................................................................................................................",
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                ),
                                pw.Text(
                                  "ผู้มีอำนาจลงนาม/AUTHORIZED SIGNATURE",
                                  style: textStyleNormal.copyWith(fontSize: 11),
                                  textAlign: pw.TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
