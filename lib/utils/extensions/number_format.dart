import 'dart:math';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

extension NumberFormatting on num? {
  String digits(int decimalDigits) => NumberFormat.decimalPatternDigits(decimalDigits: decimalDigits).format(this ?? 0);

  String get digitsConfig {
    int decimalDigits = 2;
    return NumberFormat.decimalPatternDigits(decimalDigits: decimalDigits).format(this ?? 0);
  }
}

extension TruncateDouble on num {
  String ignoreDigits(int digits) {
    // Ensure digits is non-negative
    if (digits < 0) return toString();

    // Calculate the multiplier for truncation
    double multiplier = pow(10, digits).toDouble();

    // Truncate by multiplying, flooring, then dividing back
    double truncatedValue = (this * multiplier).floor() / multiplier;

    // Convert to string with desired precision, removing trailing zeros
    return truncatedValue.toStringAsFixed(digits).replaceAll(RegExp(r"0+$"), "").replaceAll(RegExp(r"\.$"), "");
  }

  String get ignore2Digits {
    int digits = 2;
    if (digits < 0) return toString();
    double multiplier = pow(10, digits).toDouble();
    double truncatedValue = (this * multiplier).floor() / multiplier;
    return truncatedValue.toStringAsFixed(digits).replaceAll(RegExp(r"0+$"), "").replaceAll(RegExp(r"\.$"), "");
  }

  num get numIgnore2Digits {
    int digits = 2;
    if (digits < 0) return this;
    double multiplier = pow(10, digits).toDouble();
    double truncatedValue = (this * multiplier).floor() / multiplier;
    return truncatedValue;
  }
}

/// Extension สำหรับรับเฉพาะตัวเลขและทศนิยมสองตำแหน่ง
extension DecimalInputExtension on TextInputFormatter {
  static TextInputFormatter allowTwoDecimalPlaces() {
    return FilteringTextInputFormatter.allow(
      RegExp(r'^\d*\.?\d{0,2}$'),
    );
  }
}
