import 'package:intl/intl.dart';

 String formatTimestamp(String timestamp) {
  final parsedTimestamp = DateTime.parse(timestamp);
  return DateFormat.yMd().add_jm().format(parsedTimestamp);
}
