import 'package:intl/intl.dart';

class Utils {
  /* format을 받아서 format에 맞는 날짜 형태를 String으로 반환함 */
  String getDays(format) {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat(format);
    return formatter.format(now);
  }
}