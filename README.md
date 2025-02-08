# EasyDate
**flutter_easy_date**

EasyDate is a simple Flutter package for formatting dates and times dynamically based on locale.

<img src="https://github.com/Nikola-developer/flutter_easy_date/blob/main/assets/images/easy_date_example.png?raw=true"/>

## Usage

### Initialize the package

Before using `EasyDate`, initialize the locale data:
```dart
import 'package:flutter_easy_date/flutter_easy_date.dart';
void main() async {
  await EasyDate.initialize();
}
```

### Format DateTime, Date or Time
Use default device Locale
```dart
DateTime now = DateTime.now();

String formattedDate = EasyDate.date(now);  // Uses device locale
print(formattedDate);

String formattedDateTime = EasyDate.dateTime(now);
print(formattedDateTime); // Output: MM/dd/yyyy HH:mm:ss


String formattedTime = EasyDate.time(now, showSeconds: false);
print(formattedTime); // Output: HH:mm
```

### Format DateTime, Date or Time - Specify Locale
```dart
DateTime now = DateTime.now();

String formattedDate = EasyDate.date(now, locale: Locale('de'));  // Uses device locale
print(formattedDate);

String formattedDateTime = EasyDate.dateTime(now, locale: Locale('de'));
print(formattedDateTime); // Output: MM/dd/yyyy HH:mm:ss


String formattedTime = EasyDate.time(now, locale: Locale('de'));
print(formattedTime); // Output: HH:mm
```

## Supported Locales

The package supports all locales available in the `intl` package. If an unsupported locale is used, the format defaults to `MM/dd/yyyy`.

## License

MIT License
