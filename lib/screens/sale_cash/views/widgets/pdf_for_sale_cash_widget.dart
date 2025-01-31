import 'package:flutter/foundation.dart';
import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;

Future<Uint8List?> getImageBytes(String? imageUrl) async {
  if (imageUrl == null || imageUrl.isEmpty) return null;

  try {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      return response.bodyBytes;
    }
  } catch (e) {
    if (kDebugMode) print("Error fetching image: $e");
  }

  return null;
}

class PDFGeneratorSaleCash {
  Future<pw.Page> generate({required DocumentSaleModel hd, required List<DocumentSaleDTModel> dt, required CompanyModel company}) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(company.companyLogo);
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    String svgTrue = '''
<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect width="10" height="10" rx="2" fill="#0064B0"/>
<path d="M7.33317 3.39453L4.12484 6.60286L2.6665 5.14453" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''';
    String svgFasle = '''
<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect x="0.25" y="0.25" width="9.5" height="9.5" rx="1.75" stroke="#687182" stroke-width="0.5"/>
</svg>
''';
    final font = pw.Font.ttf(data.buffer.asByteData());
    var comapnyTextStyle = pw.TextStyle(
      fontSize: 14,
      fontWeight: pw.FontWeight.normal,
      color: PdfColors.grey800,
      font: font,
    );
    var textStyle = pw.TextStyle(
      fontSize: 14,
      color: PdfColor.fromHex("#5E6470"),
      font: font,
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
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                mainAxisSize: pw.MainAxisSize.max,
                children: [
                  pw.SizedBox(
                    width: 200,
                    height: 90,
                    child: (imageBytesFormNetwork != null) ? pw.Image(pw.MemoryImage(imageBytesFormNetwork), width: 71, height: 71) : pw.Container(),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(right: 10),
                    child: pw.SizedBox(
                      height: 90,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Text(
                            'ใบเสร็จรับเงิน',
                            style: pw.TextStyle(
                              font: font,
                              color: PdfColors.black,
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text("${company.companyName}", style: comapnyTextStyle),
                          pw.Text("${company.companyAddress}${company.addrDistrictName}", style: comapnyTextStyle),
                          pw.Text("${company.addrPrefectureName} ${company.addrProvinceName} ${company.addrPostcodeCode}", style: comapnyTextStyle),
                          pw.Text("${company.companyTel}", style: comapnyTextStyle),
                          pw.Text("เลขประจำตัวผู้เสียภาษี: ${company.companyTaxid}", style: comapnyTextStyle),
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
              height: 588,
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
                            pw.Text('Billed to', style: textStyle),
                            pw.Text(hd.contactName.toString(), style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                            pw.Text(hd.contactAddress.toString(), style: textStyle),
                            pw.Text("เบอร์ติดต่อ : ${hd.contactTel}", style: textStyle),
                            pw.Text('เลขประจำตัวผู้เสียภาษี ', style: textStyle),
                            pw.Text(hd.contactTaxid.toString(), style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
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
                                    pw.Text('เลขที่', style: textStyle),
                                    pw.Text(hd.saleHdDocuno.toString(), style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                                  ],
                                ),
                              ),
                              // pw.SizedBox(
                              //   height: 32,
                              //   width: double.infinity,
                              //   child: pw.Column(
                              //     crossAxisAlignment: pw.CrossAxisAlignment.start,
                              //     mainAxisAlignment: pw.MainAxisAlignment.center,
                              //     children: [
                              //       pw.Text('รหัสผู้ขาย', style: textStyle),
                              //       pw.Text(hd.contactCode.toString(), style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                              //     ],
                              //   ),
                              // ),
                              pw.SizedBox(
                                height: 32,
                                width: double.infinity,
                                child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Text('วันที่', style: textStyle),
                                    pw.Text(hd.saleHdDocudate.dateTHFormApi, style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
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
                              style: pw.TextStyle(
                                font: font,
                                fontSize: 14,
                                color: PdfColor.fromHex("#5E6470"),
                                fontWeight: pw.FontWeight.bold,
                              ),
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
                              style: pw.TextStyle(
                                font: font,
                                fontSize: 14,
                                color: PdfColor.fromHex("#5E6470"),
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'รายการ',
                              textAlign: pw.TextAlign.start,
                              style: pw.TextStyle(
                                font: font,
                                fontSize: 14,
                                color: PdfColor.fromHex("#5E6470"),
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'จำนวนเงินจ่าย',
                              textAlign: pw.TextAlign.end,
                              style: pw.TextStyle(
                                font: font,
                                fontSize: 14,
                                color: PdfColor.fromHex("#5E6470"),
                                fontWeight: pw.FontWeight.bold,
                              ),
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
                            height: 22,
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
                                      style: pw.TextStyle(
                                        fontSize: 14,
                                        font: font,
                                        color: PdfColor.fromHex("#5E6470"),
                                        fontWeight: pw.FontWeight.bold,
                                      ),
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
                                      style: pw.TextStyle(
                                        font: font,
                                        fontSize: 14,
                                        color: PdfColor.fromHex("#1A1C21"),
                                        fontWeight: pw.FontWeight.bold,
                                      ),
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
                                      style: pw.TextStyle(
                                        fontSize: 14,
                                        font: font,
                                        color: PdfColor.fromHex("#5E6470"),
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 100,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      num.parse(dt[index].saleDtNetamnt ?? '0').digits(2),
                                      textAlign: pw.TextAlign.end,
                                      style: pw.TextStyle(
                                        font: font,
                                        fontSize: 14,
                                        color: PdfColor.fromHex("#1A1C21"),
                                        fontWeight: pw.FontWeight.bold,
                                      ),
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
                                      style: pw.TextStyle(
                                        fontSize: 14,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColor.fromHex("#1A1C21"),
                                        font: font,
                                      ),
                                    ),
                                    pw.Padding(
                                      padding: const pw.EdgeInsets.only(right: 10),
                                      child: pw.Text(
                                        num.parse(hd.saleHdAmount ?? '0').digits(2),
                                        style: pw.TextStyle(
                                          font: font,
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColor.fromHex("#0064B0"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text('จำนวนเงิน (ตัวอักษร)', style: comapnyTextStyle),
                                  pw.Text(NumberToThaiWords.convert(double.parse(hd.saleHdNetamnt ?? '0')),
                                      style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                                ],
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(right: 10),
                                child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Text('รวมทั้งสิ้น', style: comapnyTextStyle),
                                    pw.Text(double.parse(hd.saleHdNetamnt ?? '0').digits(2),
                                        style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Expanded(
                                flex: 1,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(right: 30),
                                  child: pw.Column(
                                    children: [
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                        children: [
                                          pw.Text(
                                            'ชำระโดย',
                                            style: comapnyTextStyle,
                                          ),
                                          pw.Padding(
                                            padding: const pw.EdgeInsets.only(right: 10),
                                            child: pw.Text(
                                              "จำนวน",
                                              style: comapnyTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.SvgImage(svg: num.parse(hd.saleHdCashAmount ?? '0') > 0 ? svgTrue : svgTrue),
                                              pw.SizedBox(width: 5),
                                              pw.Text(
                                                'เงินสด',
                                                style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                              ),
                                            ],
                                          ),
                                          pw.Padding(
                                            padding: const pw.EdgeInsets.only(right: 10),
                                            child: pw.Text(
                                              num.parse(hd.saleHdCashAmount ?? '0').digits(2),
                                              style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.SvgImage(svg: num.parse(hd.saleHdTransferAmount ?? '0') > 0 ? svgTrue : svgFasle),
                                              pw.SizedBox(width: 5),
                                              pw.Text(
                                                'เงินโอน',
                                                style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                              ),
                                            ],
                                          ),
                                          pw.Padding(
                                            padding: const pw.EdgeInsets.only(right: 10),
                                            child: pw.Text(
                                              num.parse(hd.saleHdTransferAmount ?? '0').digits(2),
                                              style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.SvgImage(svg: num.parse(hd.saleHdCreditAmount ?? '0') > 0 ? svgTrue : svgFasle),
                                              pw.SizedBox(width: 5),
                                              pw.Text(
                                                'บัตรเครดิต',
                                                style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                              ),
                                            ],
                                          ),
                                          pw.Padding(
                                            padding: const pw.EdgeInsets.only(right: 10),
                                            child: pw.Text(
                                              num.parse(hd.saleHdCreditAmount ?? '0').digits(2),
                                              style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.SvgImage(svg: num.parse(hd.saleHdVoucherAmount ?? '0') > 0 ? svgTrue : svgFasle),
                                              pw.SizedBox(width: 5),
                                              pw.Text(
                                                'VOUCHER',
                                                style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                              ),
                                            ],
                                          ),
                                          pw.Padding(
                                            padding: const pw.EdgeInsets.only(right: 10),
                                            child: pw.Text(
                                              num.parse(hd.saleHdVoucherAmount ?? '0').digits(2),
                                              style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                        pw.Text(
                                          '',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            "จำนวน",
                                            style: comapnyTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text(
                                          'สินค้าที่ได้รับยกเว้นภาษีมูลค่าเพิ่ม',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            num.parse(hd.saleHdTotalexcludeamnt ?? '0').digits(2),
                                            style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text(
                                          'สินค้าที่ต้องเสียภาษีมูลค่าเพิ่ม',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            num.parse(hd.saleHdBaseamnt ?? '0').digits(2),
                                            style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text(
                                          'ภาษีมูลค่าเพิ่ม (7%)',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            num.parse(hd.saleHdVatamnt ?? '0').digits(2),
                                            style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text(
                                          'หัก ณ ที่จ่าย',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            num.parse(hd.saleHdWhtAmount ?? '0').digits(2),
                                            style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text(
                                          'รวมเงิน',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            num.parse(hd.saleHdNetamnt ?? '0').digits(2),
                                            style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Text(
                                          'รับเงินสุดทธิ',
                                          style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                        ),
                                        pw.Padding(
                                          padding: const pw.EdgeInsets.only(right: 10),
                                          child: pw.Text(
                                            num.parse(hd.saleHdNetamnt ?? '0').digits(2),
                                            style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          pw.SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                pw.SizedBox(
                  width: 50,
                  child: pw.Text('หมายเหตุ', style: comapnyTextStyle),
                ),
                pw.SizedBox(width: 10),
                pw.Column(
                  children: [
                    pw.Text('1.บริษัทฯขอสงวนสิทธิ์ในการแก้ไข/เปลี่ยนแปลงใบกำกับภาษี ภายในวันที่ออกใบกำกับภาษีเท่านั้น', style: comapnyTextStyle),
                    pw.Text('2.บริษัทฯขอสงวนสิทธิ์ในการออกใบกำกับภาษีแบบเต็มรูปในวันที่ออกใบกำกับภาษีอย่างย่อเท่านั้น', style: comapnyTextStyle)
                  ],
                )
              ],
            )
          ],
        );
      },
    );
  }
}
