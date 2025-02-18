import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorGeneralLedger {
  Future<pw.Page> generate({
    required DocumentGeneralLedgerModel hd,
    required List<DocumentGeneralLedgerDTModel> dt,
    required CompanyModel company,
    required num sumDebit,
    required num sumCredit,
  }) async {
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
                      height: 90,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Text("${hd.glhdDocutypeName}", style: textStyleBold.copyWith(fontSize: 20)),
                          pw.Text("${company.companyName}", style: textStyleNormal),
                          pw.Text("${company.companyAddress}${company.addrDistrictName}", style: textStyleNormal),
                          pw.Text("${company.addrPrefectureName} ${company.addrProvinceName} ${company.addrPostcodeCode}", style: textStyleNormal),
                          pw.Text("${company.companyTel}", style: textStyleNormal),
                          pw.Text("เลขประจำตัวผู้เสียภาษี: ${company.companyTaxid}", style: textStyleNormal),
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
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('สาขา', style: textStyleNormal),
                            pw.Text(hd.branchName.toString(), style: textStyleBold),
                            // pw.Text(hd.contactAddress.toString(), style: textStyleNormal),
                            // pw.Text("เบอร์ติดต่อ : ${hd.contactTel}", style: textStyleNormal),
                            // pw.Text('เลขประจำตัวผู้เสียภาษี ', style: textStyleNormal),
                            // pw.Text(hd.contactTaxid.toString(), style: textStyleBold),
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
                                    pw.Text(hd.gldocuno.toString(), style: textStyleBold),
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
                              //       pw.Text('รหัสผู้ขาย', style: textStyleNormal),
                              //       pw.Text(hd.branchCode.toString(), style: textStyleBold),
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
                                    pw.Text('วันที่', style: textStyleNormal),
                                    pw.Text(hd.gldocudate.dateTHFormApi, style: textStyleBold),
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
                        pw.Expanded(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'รหัสบัญชี',
                              textAlign: pw.TextAlign.start,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'ชื่อบัญชี',
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
                              'เดบิต',
                              textAlign: pw.TextAlign.end,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'เครดิต',
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
                                      dt[index].gldtListno.digits(0),
                                      textAlign: pw.TextAlign.center,
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
                                      dt[index].accountCode.toString(),
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
                                      dt[index].accountName.toString(),
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
                                      num.parse(dt[index].debitamnt ?? '0').digits(2),
                                      textAlign: pw.TextAlign.end,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 100,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      num.parse(dt[index].creditamnt ?? '0').digits(2),
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
                  pw.Row(
                    children: [
                      pw.SizedBox(
                        width: 30,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                          child: pw.Text(
                            '',
                            textAlign: pw.TextAlign.center,
                            style: textStyleNormal,
                          ),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                          child: pw.Text(
                            "รวมทั้งสิ้น (Total) ${dt.length} รายการ (Items)",
                            textAlign: pw.TextAlign.start,
                            style: textStyleBold,
                          ),
                        ),
                      ),
                      pw.SizedBox(
                        width: 100,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                          child: pw.Text(
                            sumDebit.digits(2),
                            textAlign: pw.TextAlign.end,
                            style: textStyleBold.copyWith(color: PdfColor.fromHex("#0064B0")),
                          ),
                        ),
                      ),
                      pw.SizedBox(
                        width: 100,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                          child: pw.Text(
                            sumCredit.digits(2),
                            textAlign: pw.TextAlign.end,
                            style: textStyleBold.copyWith(color: PdfColor.fromHex("#0064B0")),
                          ),
                        ),
                      ),
                    ],
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
                      pw.Text("ผู้ลงบัญชี (Posted by)", style: textStyleNormal),
                      pw.SizedBox(height: 10),
                      pw.Text('.............................................................', style: textStyleNormal),
                      pw.Text("${hd.fullname}", style: textStyleNormal),
                      pw.Text(hd.gldocudate.dateTHFormApi, style: textStyleNormal),
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
                      pw.Text("ผู้ตรวจ (Checked by)", style: textStyleNormal),
                      pw.SizedBox(height: 10),
                      pw.Text('...........................................................', style: textStyleNormal),
                      pw.Text("(...........................................................)", style: textStyleNormal),
                      pw.Text("วันที่.....................................................", style: textStyleNormal),
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
                      pw.Text("ผู้อนุมัติ (Approved by)", style: textStyleNormal),
                      pw.SizedBox(height: 10),
                      pw.Text('...........................................................', style: textStyleNormal),
                      pw.Text("(...........................................................)", style: textStyleNormal),
                      pw.Text("วันที่.....................................................", style: textStyleNormal),
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
