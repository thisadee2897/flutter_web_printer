// // import 'package:flutter_web_printer/apps/app_exports.dart';

// // ประกาศคลาสสำหรับวาดเส้นประในแนวนอน
// class DashedLinePainter extends CustomPainter {
//   final double dashWidth;
//   final double dashSpace;

//   DashedLinePainter({this.dashWidth = 4.0, this.dashSpace = 2.0});

//   @override
//   void paint(Canvas canvas, Size size) {
//     double startX = 0;
//     final paint = pw.PdfPaint()
//       ..color = PdfColor.fromHex("#D7DAE0")
//       ..strokeWidth = 1;
//     // วาดเส้นประในแนวนอนตรงกลางความสูง
//     while (startX < size.width) {
//       final endX = startX + dashWidth < size.width ? startX + dashWidth : size.width;
//       canvas.drawLine(
//         pw.PdfPoint(startX, size.height / 2),
//         pw.PdfPoint(endX, size.height / 2),
//         paint,
//       );
//       startX += dashWidth + dashSpace;
//     }
//   }

//   @override
//   bool shouldRepaint(pw.CustomPainter oldDelegate) => false;
// }
