//     final ByteData data = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
// final font = pw.Font.ttf(data.buffer.asByteData());
// create font pdf

import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/services.dart' show rootBundle;

class FontPdf {
  static Future<pw.Font> get fontSarabunBold async {
    return pw.Font.ttf(
      await rootBundle.load('assets/fonts/THSarabun-Bold.ttf'),
    );
  }

  static Future<pw.Font> get fontSarabunRegular async {
    return pw.Font.ttf(
      await rootBundle.load('assets/fonts/THSarabun-Regular.ttf'),
    );
  }
}
