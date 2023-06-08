import 'package:intl/intl.dart';
export 'package:visitbj/export.dart';

getDateStart(String date) {
  DateTime dateTimeStart = DateTime.parse(date);
  return DateFormat('d MMMM', 'fr_FR').format(dateTimeStart);
}

getDateEnd(String date) {
  DateTime dateTimeEnd = DateTime.parse(date);
  return DateFormat('d MMMM', 'fr_FR').format(dateTimeEnd);
}
