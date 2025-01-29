import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_payment_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorPayment {
  Future<pw.Page> generate({required DocumentPaymentModel hd, required List<DocumentPaymentDTModel> dt}) async {
    final imageBytes = (await rootBundle.load(imgLogo)).buffer.asUint8List();
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = pw.Font.ttf(data.buffer.asByteData());
    var comapnyTextStyle = pw.TextStyle(
      fontSize: 12,
      fontWeight: pw.FontWeight.normal,
      color: PdfColors.grey800,
      font: font,
    );
    var textStyle = pw.TextStyle(
      fontSize: 12,
      color: PdfColor.fromHex("#5E6470"),
      font: font,
    );
    return pw.Page(
      margin: const pw.EdgeInsets.all(0),
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            // เพิ่ม Header
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 16, right: 16, top: 30),
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.SizedBox(height: 71, child: pw.Image(pw.MemoryImage(imageBytes))),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(right: 10),
                    child: pw.SizedBox(
                      height: 78,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Text(
                            'ใบจ่ายเงิน',
                            style: pw.TextStyle(
                              font: font,
                              color: PdfColors.black,
                              fontSize: 16,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text('บริษัท เทค แคร์ โซลูชั่น จำกัด', style: comapnyTextStyle),
                          pw.Text('ที่อยู่: 88/88 หมู่ 20 ต.บ้านเป็ด อ.เมืองขอนแก่น จ.ขอนแก่น 40000', style: comapnyTextStyle),
                          pw.Text('โทร: 06-5464-5952', style: comapnyTextStyle),
                          pw.Text('เลขประจำตัวผู้เสียภาษี: 00XXXXX1234X0XX', style: comapnyTextStyle),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Container(
              padding: const pw.EdgeInsets.all(16),
              width: 563,
              height: 568,
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
                                    pw.Text(hd.paymentHdDocuno.toString(), style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
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
                                    pw.Text('รหัสผู้ขาย', style: textStyle),
                                    pw.Text(hd.contactCode.toString(), style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
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
                                    pw.Text('วันที่', style: textStyle),
                                    pw.Text(hd.paymentHdDocudate.dateTHFormApi,
                                        style: textStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                fontSize: 12,
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
                                fontSize: 12,
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
                              'วันที่ใบกำกับ',
                              textAlign: pw.TextAlign.start,
                              style: pw.TextStyle(
                                font: font,
                                fontSize: 12,
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
                                fontSize: 12,
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
                            height: 30,
                            width: 531,
                            child: pw.Row(
                              children: [
                                pw.SizedBox(
                                  width: 30,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      dt[index].paymentDtListno.digits(0),
                                      textAlign: pw.TextAlign.center,
                                      style: pw.TextStyle(
                                        fontSize: 12,
                                        font: font,
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
                                      dt[index].receiveHdDocuno.toString(),
                                      textAlign: pw.TextAlign.start,
                                      style: pw.TextStyle(
                                        fontSize: 12,
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
                                      dt[index].receiveHdDocudate.dateTHFormApi,
                                      textAlign: pw.TextAlign.start,
                                      style: pw.TextStyle(
                                        font: font,
                                        fontSize: 12,
                                        color: PdfColor.fromHex("#1A1C21"),
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
                                      num.parse(dt[index].paymentDtPaymentamount ?? '0').digits(2),
                                      textAlign: pw.TextAlign.end,
                                      style: pw.TextStyle(
                                        font: font,
                                        fontSize: 12,
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
                                        fontSize: 12,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColor.fromHex("#1A1C21"),
                                        font: font,
                                      ),
                                    ),
                                    pw.Padding(
                                      padding: const pw.EdgeInsets.only(right: 10),
                                      child: pw.Text(
                                        num.parse(hd.paymentHdAmount ?? '0').digits(2),
                                        style: pw.TextStyle(
                                          font: font,
                                          fontSize: 12,
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
                          pw.SizedBox(height: 10),
                          pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Text('หมายเหตุ', style: comapnyTextStyle),
                          pw.Text("${hd.paymentHdRemark}", style: comapnyTextStyle),
                          pw.Row(
                            children: [
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text('บัญชีธนาคาร', style: comapnyTextStyle),
                                  pw.Text(
                                    "${hd.bankName}",
                                    style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                  ),
                                ],
                              ),
                              pw.SizedBox(height: 50),
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text('เลขบัญชี', style: comapnyTextStyle),
                                  pw.Text(
                                    "${hd.branchBankbookBankbookno}",
                                    style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          pw.SizedBox(height: 20),
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text('จำนวนเงิน (ตัวอักษร)', style: comapnyTextStyle),
                                  pw.Text(NumberToThaiWords.convert(double.parse(hd.paymentHdNetamnt ?? '0')),
                                      style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                                ],
                              ),
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.end,
                                crossAxisAlignment: pw.CrossAxisAlignment.end,
                                children: [
                                  pw.Text('รวมทั้งสิ้น', style: comapnyTextStyle),
                                  pw.Text(double.parse(hd.paymentHdNetamnt ?? '0').digits(2),
                                      style: comapnyTextStyle.copyWith(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
                                ],
                              ),
                            ],
                          ),
                          pw.SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
              children: [
                pw.SizedBox(
                  width: 149,
                  height: 80,
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Text("ผู้เบิกจ่าย", style: comapnyTextStyle),
                      pw.SizedBox(height: 10),
                      pw.Text('..........................................................................', style: comapnyTextStyle),
                      pw.Text(
                        "${hd.fullname}",
                        style: comapnyTextStyle.copyWith(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                      pw.Text(
                        hd.paymentHdDocudate.dateTHFormApi,
                        style: comapnyTextStyle.copyWith(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(
                  width: 149,
                  height: 80,
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Text("ผู้อนุมัติจ่าย", style: comapnyTextStyle),
                      pw.SizedBox(height: 10),
                      pw.Text('..........................................................................', style: comapnyTextStyle),
                      pw.Text(
                        "(..........................................................................)",
                        style: comapnyTextStyle.copyWith(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                      pw.Text(
                        "วันที่.........................................",
                        style: comapnyTextStyle.copyWith(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(
                  width: 149,
                  height: 80,
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Text("ผู้รับเงิน", style: comapnyTextStyle),
                      pw.SizedBox(height: 10),
                      pw.Text('..........................................................................', style: comapnyTextStyle),
                      pw.Text(
                        "(..........................................................................)",
                        style: comapnyTextStyle.copyWith(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                      pw.Text(
                        "วันที่.........................................",
                        style: comapnyTextStyle.copyWith(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
