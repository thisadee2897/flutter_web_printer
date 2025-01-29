import 'package:flutter_web_printer/apps/app_exports.dart';

class TextHDWidget extends StatelessWidget {
  final double width;
  final String title;
  final TextAlign? textAlign;
  final Color? color;
  const TextHDWidget({
    super.key,
    required this.width,
    required this.title,
    this.textAlign = TextAlign.start,
    this.color = const Color.fromRGBO(94, 100, 112, 1),
  });

  @override
  Widget build(BuildContext context) {
    return width == 0
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Text(
                textAlign: textAlign,
                title,
                style: TextStyle(
                  fontSize: 8,
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        : SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Text(
                textAlign: textAlign,
                title,
                style: TextStyle(
                  fontSize: 8,
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
  }
}

class TextDTWidget extends StatelessWidget {
  final double width;
  final String title;
  final TextAlign? textAlign;
  final Color? color;
  const TextDTWidget({
    super.key,
    required this.width,
    required this.title,
    this.textAlign = TextAlign.start,
    this.color = const Color.fromRGBO(94, 100, 112, 1),
  });

  @override
  Widget build(BuildContext context) {
    return width == 0
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Text(
                textAlign: textAlign,
                title,
                style: TextStyle(
                  fontFamily: GoogleFonts.prompt().fontFamily,
                  fontSize: 10,
                  color: color,
                  fontWeight: color == const Color.fromRGBO(94, 100, 112, 1) ? FontWeight.w400 : FontWeight.w500,
                ),
              ),
            ),
          )
        : SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Text(
                textAlign: textAlign,
                title,
                style: TextStyle(
                  fontFamily: GoogleFonts.prompt().fontFamily,
                  fontSize: 10,
                  color: color,
                  fontWeight: color == const Color.fromRGBO(94, 100, 112, 1) ? FontWeight.w400 : FontWeight.w500,
                ),
              ),
            ),
          );
  }
}
