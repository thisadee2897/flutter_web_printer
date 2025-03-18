import 'package:flutter_web_printer/apps/app_exports.dart';
import 'package:flutter_web_printer/utils/services/locale.dart';
import 'package:intl/intl.dart';


extension DateTimeExtension on DateTime {
  String formattedDate(WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    String? languageCode = locale.languageCode;
    return DateFormat('EEE d MMM yyyy', languageCode).format(this);
  }

  // String get formattedTime => DateFormat('hh:mm a').format(this);
  String formattedTime(WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    String? languageCode = locale.languageCode;

    return languageCode == 'th' ? DateFormat('HH:mm', languageCode).format(this) : DateFormat('hh:mm a').format(this);
  }

  String get formattedDateTime => DateFormat('dd/MM/yyyy HH:mm').format(this);
  // String get formattedDate Thailand
  String get formattedDateTH => DateFormat('dd/MM/yyyy').format(this);
  String get formattedFullMonthTH=> DateFormat('dd MMMM yyyy','th').format(this);

  String formattedShortDate(WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    String? languageCode = locale.languageCode;
    return DateFormat('d MMM yy', languageCode).format(this);
  }
  String formattedFullDate(WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    String? languageCode = locale.languageCode;
    return DateFormat('EEEE dd MMMM yyyy', languageCode).format(this);
  }
  String formattedFullDateTime(WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    String? languageCode = locale.languageCode;
    return DateFormat('EEEE dd MMMM yyyy HH:mm:ss', languageCode).format(this);
  }
  String formattedFullTime(WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    String? languageCode = locale.languageCode;
    return DateFormat('HH:mm:ss', languageCode).format(this);
  }
  get timeOnly => DateFormat('HH:mm:ss').format(this);
  get dateOnly => DateFormat('yyyy-MM-dd').format(this);
}
