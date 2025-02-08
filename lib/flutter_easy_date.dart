import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'dart:ui';

class EasyDate {
  /// Initializes locale data. Must be called before using date formatting.
  static Future<void> initialize() async {
    await initializeDateFormatting();
  }

  /// Formats a [DateTime] object into a date string based on the provided [locale].
  static String date(DateTime dateTime, {Locale? locale}) {
    final String format = _getDateFormat(locale);
    return DateFormat(format).format(dateTime);
  }

  /// Formats a [DateTime] object into a date-time string based on the provided [locale].
  static String dateTime(DateTime dateTime, {Locale? locale}) {
    final String format = "${_getDateFormat(locale)} HH:mm:ss";
    return DateFormat(format).format(dateTime);
  }

  /// Formats a [DateTime] object into a time string based on the provided [locale].
  static String time(DateTime dateTime,
      {Locale? locale, bool showSeconds = true}) {
    final String format = showSeconds ? "HH:mm:ss" : "HH:mm";
    return DateFormat(format).format(dateTime);
  }

  /// Determines the date format based on the locale dynamically, with error handling.
  static String _getDateFormat(Locale? locale) {
    try {
      final Locale effectiveLocale =
          locale ?? Locale(PlatformDispatcher.instance.locale.languageCode);
      return DateFormat.yMd(effectiveLocale.languageCode).pattern ??
          "MM/dd/yyyy HH:mm:ss";
    } catch (e) {
      return "MM/dd/yyyy"; // Fallback format
    }
  }
}
