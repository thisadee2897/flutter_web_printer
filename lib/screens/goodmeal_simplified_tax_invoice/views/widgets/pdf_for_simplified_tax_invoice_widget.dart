import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/simplified_tax_invoice_model.dart';
import 'package:flutter_web_printer/utils/extensions/cancel.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorSimplifiedTaxInvoice {
  Future<pw.Page> generate({
    required SimplifiedTaxInvoiceModel dt,
    bool showFooter = true,
    bool showDiscounts = false,
    bool showPaymentMethods = false,
    bool showCategories = false,
    bool showPoints = false,
  }) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(dt.header!.companyLogoImageNetwork);
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
      margin: const pw.EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
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
                pw.Container(
                  margin: const pw.EdgeInsets.only(left: 14, right: 14),
                  width: double.infinity,
                  height: 800,
                  decoration: pw.BoxDecoration(
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
                        ],
                      ),
                      pw.SizedBox(height: 10),
                      pw.Align(
                        alignment: pw.Alignment.center,
                        child: pw.Text(
                          dt.header!.title!,
                          style: textStyleBold.copyWith(fontSize: 16),
                        ),
                      ),
                      pw.Row(
                        mainAxisSize: pw.MainAxisSize.max,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Expanded(
                            flex: 2,
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
                                        pw.Text('เลขที่บิลขาย : ', style: textStyleNormal),
                                        pw.Text("${dt.header!.docuNo}", style: textStyleNormal),
                                      ],
                                    ),
                                  ),
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
                                      mainAxisAlignment: pw.MainAxisAlignment.start,
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text('พนักงาน : ', style: textStyleNormal),
                                        pw.Text(dt.header?.employeeName ?? '-', style: textStyleNormal),
                                      ],
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: double.infinity,
                                    child: pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.start,
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text('วันที่ : ', style: textStyleNormal),
                                        pw.Text(dt.header!.docuDate.dateTHFormApi, style: textStyleNormal),
                                        pw.SizedBox(width: 10),
                                        pw.Text('เวลา : ', style: textStyleNormal),
                                        pw.Text(dt.header!.docuDate.timeOnlyTHFormApi, style: textStyleNormal),
                                      ],
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: double.infinity,
                                    child: pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.start,
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text('โต๊ะ : ', style: textStyleNormal),
                                        pw.Text(dt.header!.tableNumber ?? '-', style: textStyleNormal),
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
                      // Table
                      if (dt.details!.isNotEmpty)
                        pw.Table(
                          // border: pw.TableBorder.all(
                          //   color: PdfColor.fromHex("#000000"),
                          //   width: 0.5,
                          //   style: pw.BorderStyle.solid,
                          // ),
                          children: [
                            pw.TableRow(
                              children: [
                                pw.Container(
                                  height: 20,
                                  width: 40,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(color: PdfColors.black, width: 2),
                                      bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                    ),
                                  ),
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Center(
                                      child: pw.Text(
                                        'ลำดับ',
                                        textAlign: pw.TextAlign.center,
                                        style: textStyleBold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  height: 20,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(color: PdfColors.black, width: 2),
                                      bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                    ),
                                  ),
                                  width: double.infinity,
                                  child: pw.Align(
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        'รายการ',
                                        style: textStyleBold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  height: 20,
                                  width: 80,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(color: PdfColors.black, width: 2),
                                      bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                    ),
                                  ),
                                  child: pw.Align(
                                    alignment: pw.Alignment.centerRight,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        'ราคาต่อหน่วย',
                                        textAlign: pw.TextAlign.end,
                                        style: textStyleBold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  height: 20,
                                  width: 50,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(color: PdfColors.black, width: 2),
                                      bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                    ),
                                  ),
                                  child: pw.Align(
                                    alignment: pw.Alignment.centerRight,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        'จำนวน',
                                        textAlign: pw.TextAlign.end,
                                        style: textStyleBold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  height: 20,
                                  width: 80,
                                  decoration: const pw.BoxDecoration(
                                    border: pw.Border(
                                      top: pw.BorderSide(color: PdfColors.black, width: 2),
                                      bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                    ),
                                  ),
                                  child: pw.Align(
                                    alignment: pw.Alignment.centerRight,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        'จำนวนเงิน',
                                        textAlign: pw.TextAlign.end,
                                        style: textStyleBold,
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
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 20,
                                      child: pw.Align(
                                        alignment: pw.Alignment.centerRight,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                          child: pw.Text(
                                            item.unitPrice.digits(2),
                                            textAlign: pw.TextAlign.end,
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 20,
                                      child: pw.Align(
                                        alignment: pw.Alignment.centerRight,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                          child: pw.Text(
                                            item.quantity.digits(2),
                                            textAlign: pw.TextAlign.end,
                                            style: textStyleNormal,
                                          ),
                                        ),
                                      ),
                                    ),
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
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      pw.SizedBox(height: 10),
                      // Footer
                      if (showFooter)
                        pw.Column(
                          children: [
                            if (showDiscounts)
                              pw.Divider(
                                color: PdfColor.fromHex("#000000"),
                                thickness: 0.2,
                                borderStyle: pw.BorderStyle.dashed,
                              ),
                            if (showDiscounts)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                'รวมจำนวนสินค้า',
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.totalItems.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(width: 80),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (showDiscounts)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                'รวมค่าสินค้า',
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.totalAmount.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (showDiscounts)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                'ค่าบริการ',
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.serviceCharge.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (showDiscounts)
                              ...List.generate(
                                dt.footer!.discounts!.length,
                                (index) {
                                  var itemDiscount = dt.footer!.discounts![index];
                                  return pw.Table(
                                    children: [
                                      pw.TableRow(
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.SizedBox(
                                                height: 20,
                                                width: 150,
                                                child: pw.Padding(
                                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                                  child: pw.Text(
                                                    itemDiscount.discountName!,
                                                    style: textStyleNormal,
                                                  ),
                                                ),
                                              ),
                                              pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                            ],
                                          ),
                                          pw.Row(
                                            mainAxisAlignment: pw.MainAxisAlignment.end,
                                            children: [
                                              pw.SizedBox(
                                                height: 20,
                                                child: pw.Padding(
                                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                                  child: pw.Text(
                                                    itemDiscount.discountValue.digits(2),
                                                    textAlign: pw.TextAlign.end,
                                                    style: textStyleNormal,
                                                  ),
                                                ),
                                              ),
                                              pw.SizedBox(width: 80),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            if (showDiscounts)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                'รวมส่วนลด',
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.totalDiscount.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (showDiscounts)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                'ภาษีมูลค่าเพิ่ม',
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.vatIncluded.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (showDiscounts)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.Row(
                                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                'รวมจำนวนเงินสุทธิ',
                                                style: textStyleBold,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(height: 20, child: pw.Text(':', style: textStyleBold)),
                                        ],
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.netAmount.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleBold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (showPaymentMethods)
                              pw.Divider(
                                color: PdfColor.fromHex("#000000"),
                                thickness: 0.2,
                                borderStyle: pw.BorderStyle.dashed,
                              ),
                            if (showPaymentMethods)
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.end,
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 80,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          'เงินสดที่ได้รับ',
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 80,
                                    height: 20,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Text(':', style: textStyleNormal),
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 130,
                                    height: 20,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        dt.footer!.cashReceived.digits(2),
                                        textAlign: pw.TextAlign.end,
                                        style: textStyleNormal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (showPaymentMethods)
                              pw.Row(
                                mainAxisAlignment: pw.MainAxisAlignment.end,
                                children: [
                                  pw.SizedBox(
                                    height: 20,
                                    width: 80,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                        child: pw.Text(
                                          'เงินทอน',
                                          style: textStyleNormal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 80,
                                    height: 20,
                                    child: pw.Align(
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Text(':', style: textStyleNormal),
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 130,
                                    height: 20,
                                    child: pw.Padding(
                                      padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                      child: pw.Text(
                                        dt.footer!.change.digits(2),
                                        textAlign: pw.TextAlign.end,
                                        style: textStyleNormal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (dt.footer!.paymentMethods!.isNotEmpty && showPaymentMethods)
                              pw.SizedBox(
                                height: 20,
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text("ชำระโดย", style: textStyleBold),
                                ),
                              ),
                            if (dt.footer!.paymentMethods!.isNotEmpty && showPaymentMethods)
                              ...List.generate(
                                dt.footer!.paymentMethods!.length,
                                (index) {
                                  var itemPayment = dt.footer!.paymentMethods![index];
                                  return pw.Table(
                                    children: [
                                      pw.TableRow(
                                        verticalAlignment: pw.TableCellVerticalAlignment.top,
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 80,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                itemPayment.paymentMethod!,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(
                                            width: 75,
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                itemPayment.amount.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.Expanded(child: pw.SizedBox()),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            if (dt.footer!.categories!.isNotEmpty && showCategories)
                              pw.Divider(
                                color: PdfColor.fromHex("#000000"),
                                thickness: 0.2,
                                borderStyle: pw.BorderStyle.dashed,
                              ),
                            if (dt.footer!.categories!.isNotEmpty && showCategories)
                              pw.SizedBox(
                                height: 20,
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text("หมวดหมู่สินค้า", style: textStyleBold),
                                ),
                              ),
                            if (dt.footer!.categories!.isNotEmpty && showCategories)
                              ...List.generate(
                                dt.footer!.categories!.length,
                                (index) {
                                  var itemCategory = dt.footer!.categories![index];
                                  return pw.Table(
                                    children: [
                                      pw.TableRow(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                itemCategory.categoryName!,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.Row(
                                            mainAxisAlignment: pw.MainAxisAlignment.end,
                                            children: [
                                              pw.SizedBox(
                                                height: 20,
                                                child: pw.Padding(
                                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                                  child: pw.Text(
                                                    itemCategory.quantity.digits(2),
                                                    textAlign: pw.TextAlign.end,
                                                    style: textStyleNormal,
                                                  ),
                                                ),
                                              ),
                                              pw.SizedBox(
                                                width: 80,
                                                height: 20,
                                                child: pw.Padding(
                                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                                  child: pw.Text(
                                                    itemCategory.amount.digits(2),
                                                    textAlign: pw.TextAlign.end,
                                                    style: textStyleNormal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            if (dt.footer!.totalCategoriesAmount != 0 && showCategories)
                              pw.Table(
                                children: [
                                  pw.TableRow(
                                    children: [
                                      pw.SizedBox(
                                        height: 20,
                                        width: 150,
                                        child: pw.Padding(
                                          padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                          child: pw.Text(
                                            "รวมราคาสินค้า",
                                            style: textStyleBold.copyWith(decoration: pw.TextDecoration.underline),
                                          ),
                                        ),
                                      ),
                                      pw.Row(
                                        mainAxisAlignment: pw.MainAxisAlignment.end,
                                        children: [
                                          pw.SizedBox(
                                            width: 80,
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                dt.footer!.totalCategoriesAmount.digits(2),
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleBold.copyWith(decoration: pw.TextDecoration.underline),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            if (dt.footer!.points!.isNotEmpty && showPoints)
                              pw.Divider(
                                color: PdfColor.fromHex("#000000"),
                                thickness: 0.2,
                                borderStyle: pw.BorderStyle.dashed,
                              ),
                            if (dt.footer!.points!.isNotEmpty && showPoints)
                              ...List.generate(
                                dt.footer!.points!.length,
                                (index) {
                                  var itemPoint = dt.footer!.points![index];
                                  return pw.Table(
                                    children: [
                                      pw.TableRow(
                                        children: [
                                          pw.SizedBox(
                                            height: 20,
                                            width: 150,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                itemPoint.pointName!,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                ":",
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                          pw.SizedBox(
                                            width: 105,
                                            height: 20,
                                            child: pw.Padding(
                                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                              child: pw.Text(
                                                itemPoint.pointValue!,
                                                textAlign: pw.TextAlign.end,
                                                style: textStyleNormal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
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
