import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class CancelText extends pw.StatelessWidget {
  final String text;
  final double angleDeg;
  final double fontSize;
  final pw.TextStyle style;
  final bool? isCancel;

  CancelText(
    this.style,
    this.isCancel, {
    this.angleDeg = 30,
    this.fontSize = 150,
    this.text = 'ยกเลิก',
  });

  @override
  pw.Widget build(pw.Context context) {
    return isCancel == true
        ? pw.Center(
            child: pw.Transform.rotate(
              angle: angleDeg * 3.1415926535 / 180,
              child: pw.Text(
                text,
                style: style.copyWith(
                  fontSize: fontSize,
                  fontStyle: pw.FontStyle.italic,
                  color: PdfColor.fromHex("#c2c2c2"),
                  letterSpacing: 2,
                ),
              ),
            ),
          )
        : pw.Container();
  }
}
