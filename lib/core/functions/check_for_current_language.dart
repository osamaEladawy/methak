import 'package:intl/intl.dart';

bool get isArabic {
  return Intl.getCurrentLocale() == 'ar';
}