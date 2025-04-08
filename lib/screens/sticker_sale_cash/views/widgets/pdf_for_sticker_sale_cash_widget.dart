import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/models/document_sale_model.dart';
import 'package:flutter_web_printer/models/document_sale_d_t_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

extension on num {
  get cmToPixcel {
    return this * 28.346457;
  }
}

class PDFGeneratorStickerSaleCash {
  Future<pw.Page> generate({required DocumentSaleModel hd, required List<DocumentSaleDTModel> dt, required CompanyModel company}) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(company.companyLogo);
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = pw.Font.ttf(data.buffer.asByteData());
    final ByteData dataBold = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    final fontBold = pw.Font.ttf(dataBold.buffer.asByteData());
    var textStyleNormal = pw.TextStyle(
      fontSize: 15,
      fontWeight: pw.FontWeight.normal,
      color: PdfColors.black,
      font: font,
    );
    var textStyleBold = pw.TextStyle(
      fontSize: 15,
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.black,
      font: fontBold,
    );
    return pw.Page(
      pageFormat: PdfPageFormat(
        10.cmToPixcel,
        15.cmToPixcel,
        marginAll: 0,
      ),
      margin: const pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.SizedBox(
          width: 10.cmToPixcel,
          height: 15.cmToPixcel,
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // เพิ่ม Header
              pw.Padding(
                padding: const pw.EdgeInsets.only(left: 0, right: 0, top: 0),
                child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  mainAxisSize: pw.MainAxisSize.max,
                  children: [
                    pw.Container(
                      // color: PdfColors.orange,
                      width: 4.cmToPixcel,
                      height: 1.cmToPixcel,
                      child: (imageBytesFormNetwork != null)
                          ? pw.Image(
                              alignment: pw.Alignment.topLeft,
                              fit: pw.BoxFit.fitHeight,
                              pw.MemoryImage(imageBytesFormNetwork),
                              width: 4.cmToPixcel,
                              height: 1.cmToPixcel,
                            )
                          : pw.Container(),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(right: 10),
                      child: pw.SizedBox(
                        width: 4.8.cmToPixcel,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            // pw.Text("${company.companyName}", style: textStyleNormal),
                            pw.Text(
                              "${company.companyAddress}${company.addrDistrictName} ${company.addrPrefectureName} ${company.addrProvinceName} ${company.addrPostcodeCode}",
                              style: textStyleNormal.copyWith(fontSize: 11),
                            ),
                            pw.Text("${company.companyTel}", style: textStyleNormal.copyWith(fontSize: 11)),
                            pw.Text("${hd.saleHdSavetime}", style: textStyleNormal.copyWith(fontSize: 11)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //เพิ่มเส้นประ เส้นตรง
              pw.Divider(borderStyle: pw.BorderStyle.dashed),
              pw.Text("${hd.saleHdDocuno}", style: textStyleBold.copyWith(fontSize: 15)),
              pw.SizedBox(height: 10),
              pw.Expanded(
                child: pw.ListView.builder(
                  spacing: 5,
                  itemCount: dt.length,
                  itemBuilder: (context, insex) {
                    var item = dt[insex];
                    return pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                        textAlign: pw.TextAlign.left,
                        "${item.saleDtProductBarcodeName}  ${item.saleDtQty}",
                        style: textStyleNormal.copyWith(fontSize: 15),
                      ),
                    );
                  },
                ),
              ),
              //พื้นที่ว่าง
              pw.Text("${hd.contactBranchname}", style: textStyleNormal.copyWith(fontSize: 15)),
              pw.Text("โทร.${hd.contactTel}", style: textStyleNormal.copyWith(fontSize: 15)),
              pw.Text("${hd.contactName}", style: textStyleNormal.copyWith(fontSize: 15)),
              pw.Text("${hd.contactAddress}", style: textStyleNormal.copyWith(fontSize: 15)),
            ],
          ),
        );
      },
    );
  }
}
