// import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_printer/screens/earning_statement/controllers/providers/earning_statement_dt.dart';
import 'package:flutter_web_printer/utils/extensions/date_time.dart';
import 'package:flutter_web_printer/utils/extensions/number_format.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PDFGeneratorEarningStatement {
  Future<Page> generate({required EarningStatementHD hd, required List<EarningStatementMappingModel> dt}) async {
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = Font.ttf(data.buffer.asByteData());
    final ByteData dataBold = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    final fontBold = Font.ttf(dataBold.buffer.asByteData());
    var textStyleNormal = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: PdfColors.black,
      font: font,
    );
    var textStyleBold = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: PdfColors.black,
      font: fontBold,
    );
    return Page(
      pageFormat: PdfPageFormat.a4,
      margin: const EdgeInsets.all(10),
      orientation: PageOrientation.portrait,
      theme: ThemeData.withFont(base: font),
      build: (Context context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('งบกำไรขาดทุน', style: textStyleBold.copyWith(fontSize: 20)),
                    Text('ตั้งแต่วันที่ ${hd.startDate!.formattedFullMonthTH} - ${hd.endDate!.formattedFullMonthTH}', style: textStyleBold),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              height: 28,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text('รวมสุทธิ', style: textStyleBold),
                ),
              ),
            ),
            Column(
              children: List.generate(
                dt.length,
                (index) {
                  var item = dt[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        height: 28,
                        width: 350,
                        decoration: BoxDecoration(
                          color: PdfColor.fromHex("#ECF7FF"),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2, right: 2),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${item.title}',
                              textAlign: TextAlign.center,
                              style: textStyleBold,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          item.detail!.length,
                          (i) {
                            var itemDetail = item.detail![i];
                            return Container(
                              padding: const EdgeInsets.only(right: 8),
                              width: 320,
                              height: 25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(itemDetail.accountCategorySubName!, style: textStyleNormal),
                                  Text(num.parse(itemDetail.sumProfit!).digits(2), style: textStyleNormal),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      if (item.detail!.length > 1)
                        Container(
                          width: 350,
                          height: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(),
                            child: Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          ),
                        ),
                      if (item.detail!.length > 1)
                        Container(
                          width: 350,
                          height: 28,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('รวม ${item.title}', style: textStyleBold),
                                Text(item.sumTotal.digits(2), style: textStyleBold),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
