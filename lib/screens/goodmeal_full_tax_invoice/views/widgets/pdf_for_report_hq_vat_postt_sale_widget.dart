import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/full_tax_invoice_model.dart';
import 'package:flutter_web_printer/utils/extensions/cancel.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorFullTaxInvoice {
  Future<pw.Page> generate({required FullTaxInvoiceModel dt, required String type}) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(dt.header?.companyLogoImageNetwork);
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
      pageFormat: PdfPageFormat.a4.portrait,
      margin: const pw.EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
      orientation: pw.PageOrientation.portrait,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.Stack(
          children: [
            CancelText(textStyleBold, dt.isCancel),
            pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                // Header
                pw.Container(
                  // padding: const pw.EdgeInsets.all(10),
                  margin: const pw.EdgeInsets.only(left: 14, right: 14),
                  width: double.infinity,
                  height: 485,
                  decoration: pw.BoxDecoration(
                    // border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                    borderRadius: pw.BorderRadius.circular(12),
                  ),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Container(
                                width: 50,
                                height: 50,
                                child: (imageBytesFormNetwork != null)
                                    ? pw.Image(
                                        alignment: pw.Alignment.topLeft,
                                        fit: pw.BoxFit.fitHeight,
                                        pw.MemoryImage(imageBytesFormNetwork),
                                        width: 50,
                                        height: 50,
                                      )
                                    : pw.Container(),
                              ),
                              pw.SizedBox(width: 10),
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    dt.header?.companyName ?? '',
                                    style: textStyleBold,
                                  ),
                                  pw.Text(
                                    dt.header?.companyAddress ?? '',
                                    style: textStyleNormal,
                                  ),
                                  pw.Row(
                                    mainAxisAlignment: pw.MainAxisAlignment.start,
                                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(
                                        "โทร : ${dt.header?.companyPhoneNumber ?? '-'} ",
                                        style: textStyleNormal,
                                      ),
                                      pw.Text(
                                        " เลขประจำตัวผู้เสียภาษีอากร : ${dt.header?.companyTaxId ?? '-'}",
                                        style: textStyleNormal,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.end,
                            children: [
                              pw.Text(
                                dt.header?.title ?? '',
                                style: textStyleNormal,
                              ),
                              pw.Text(
                                type,
                                style: textStyleBold,
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.SizedBox(height: 20),
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
                                        pw.Text('ชื่อลูกค้า : ', style: textStyleNormal),
                                        pw.Text("${dt.header!.customerName}", style: textStyleNormal),
                                      ],
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: double.infinity,
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      mainAxisAlignment: pw.MainAxisAlignment.start,
                                      children: [
                                        pw.Text('ที่อยู่ : ', style: textStyleNormal),
                                        pw.Text(dt.header?.customerAddress ?? "-", style: textStyleNormal),
                                      ],
                                    ),
                                  ),
                                  pw.SizedBox(
                                      width: double.infinity,
                                      child: pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.start,
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "โทร : ${dt.header?.customerPhoneNumber ?? '-'} ",
                                            style: textStyleNormal,
                                          ),
                                          pw.Text(
                                            " เลขประจำตัวผู้เสียภาษีอากร : ${dt.header?.customerTaxId ?? '-'}",
                                            style: textStyleNormal,
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          pw.Expanded(
                            flex: 1,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 8.0, right: 0.0),
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
                                        pw.Text('เลขที่ : ', style: textStyleNormal),
                                        pw.Text(dt.header?.docuNo ?? '-', style: textStyleNormal),
                                      ],
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: double.infinity,
                                    child: pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.end,
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text('วันที่ : ', style: textStyleNormal),
                                        pw.Text(dt.header!.docuDate.dateTHFormApi, style: textStyleNormal),
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
                                        dt.header!.branchs!.length,
                                        (index) {
                                          var item = dt.header!.branchs![index];
                                          return pw.Padding(
                                            padding: const pw.EdgeInsets.only(left: 12.0),
                                            child: pw.Row(
                                              children: [
                                                pw.SvgImage(svg: item.selected == true ? svgTrue : svgFasle),
                                                pw.SizedBox(width: 5),
                                                pw.Text("${item.branchName}", style: textStyleNormal),
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
                        // columnWidths: const {
                        //   0: pw.FlexColumnWidth(1),
                        //   1: pw.
                        //   2: pw.FlexColumnWidth(3),
                        // },
                        children: [
                          // Header Row

                          pw.TableRow(
                            children: [
                              pw.SizedBox(
                                height: 20,
                                width: 40,
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
                                  height: 20,
                                  width: double.infinity,
                                  child: pw.Align(
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        'รายการ',
                                        style: textStyleNormal,
                                      ),
                                    ),
                                  )),
                              pw.SizedBox(
                                height: 20,
                                width: 100,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Center(
                                    child: pw.Text(
                                      'จำนวนเงิน',
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
                            dt.details!.length,
                            (index) {
                              var item = dt.details![index];
                              return pw.TableRow(
                                children: [
                                  pw.SizedBox(
                                      height: 20,
                                      child: pw.Align(
                                        alignment: pw.Alignment.center,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                          child: pw.Text(
                                            item.listNo.toString(),
                                            textAlign: pw.TextAlign.center,
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      )),
                                  pw.SizedBox(
                                      height: 20,
                                      child: pw.Align(
                                        alignment: pw.Alignment.centerLeft,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                          child: pw.Text(
                                            item.itemName ?? '',
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      )),
                                  pw.SizedBox(
                                      height: 20,
                                      child: pw.Align(
                                        alignment: pw.Alignment.centerRight,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                          child: pw.Text(
                                            item.amount.digits(2),
                                            textAlign: pw.TextAlign.end,
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      )),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.end,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Expanded(
                            child: pw.Table(
                              defaultVerticalAlignment: pw.TableCellVerticalAlignment.top,
                              children: [
                                pw.TableRow(
                                  children: [
                                    pw.SizedBox(
                                      height: 20,
                                      width: 150,
                                      child: pw.Align(
                                        alignment: pw.Alignment.centerLeft,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 0, right: 0),
                                          child: pw.Text(
                                            "จำนวนเงิน (${NumberToThaiWords.convert(double.parse(dt.footer!.netAmount.toString()))})",
                                            textAlign: pw.TextAlign.start,
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.TableRow(
                                  children: [
                                    pw.SizedBox(
                                      height: 20,
                                      width: 150,
                                      child: pw.Align(
                                        alignment: pw.Alignment.centerLeft,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 0, right: 0),
                                          child: pw.Text(
                                            "ชำระเงินโดย ${dt.footer!.paymentMethod ?? '-'}",
                                            textAlign: pw.TextAlign.start,
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          pw.Table(
                            children: [
                              pw.TableRow(
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          "สินค้าที่ได้รับยกเว้นภาษีมูลค่าเพิ่ม",
                                          textAlign: pw.TextAlign.start,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          "สินค้าที่ต้องเสียภาษีมูลค่าเพิ่ม",
                                          textAlign: pw.TextAlign.start,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          "ภาษีมูลค่าเพิ่ม (7%)",
                                          textAlign: pw.TextAlign.start,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          "หัก ณ ที่จ่าย",
                                          textAlign: pw.TextAlign.start,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          "จำนวนเงินสุทธิ",
                                          textAlign: pw.TextAlign.start,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          pw.Table(
                            children: [
                              pw.TableRow(
                                decoration: pw.BoxDecoration(
                                  border: pw.Border(
                                    left: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    right: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    bottom: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 100,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerRight,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          dt.footer!.vatExempt.digits(2),
                                          textAlign: pw.TextAlign.end,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                decoration: pw.BoxDecoration(
                                  border: pw.Border(
                                    left: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    right: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    bottom: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 100,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerRight,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          dt.footer!.vatIncluded.digits(2),
                                          textAlign: pw.TextAlign.end,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                decoration: pw.BoxDecoration(
                                  border: pw.Border(
                                    left: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    right: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    bottom: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 100,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerRight,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          dt.footer!.vatAmount.digits(2),
                                          textAlign: pw.TextAlign.end,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                decoration: pw.BoxDecoration(
                                  border: pw.Border(
                                    left: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    right: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    bottom: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 100,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerRight,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          dt.footer!.withholdingTax.digits(2),
                                          textAlign: pw.TextAlign.end,
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              pw.TableRow(
                                decoration: pw.BoxDecoration(
                                  border: pw.Border(
                                    left: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    right: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                    bottom: pw.BorderSide(
                                      color: PdfColor.fromHex("#000000"),
                                      width: 0.5,
                                      style: pw.BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 100,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        dt.footer!.netAmount.digits(2),
                                        textAlign: pw.TextAlign.end,
                                        style: textStyleNormal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      pw.SizedBox(height: 50),
                      pw.Row(
                        children: [
                          pw.Expanded(
                            child: pw.SizedBox(
                              height: 20,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                child: pw.Text(
                                  "(ลงชื่อผู้รับเงิน).............................................................................................",
                                  textAlign: pw.TextAlign.start,
                                  style: textStyleNormal,
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(
                            width: 250,
                            height: 20,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Text(
                                "(สำหรับบัญชี)",
                                textAlign: pw.TextAlign.start,
                                style: textStyleNormal,
                              ),
                            ),
                          ),
                        ],
                      )
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
