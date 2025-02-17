import 'package:intl/intl.dart';

extension DateTimeFormApi on String? {
  String get dateTHFormApi {
    if (this == null || this == '') return '';
    DateTime dateTimeFormLocal = DateTime.parse(this!).toLocal();
    //dateTimeFormLocal add 543 year
    DateTime dateTimeFormLocalAdd543 = DateTime(dateTimeFormLocal.year + 543, dateTimeFormLocal.month, dateTimeFormLocal.day);
    //dd/MM/yyyy format
    return DateFormat('dd/MM/yyyy').format(dateTimeFormLocalAdd543);
  }
}
