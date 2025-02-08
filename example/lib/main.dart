import 'package:flutter/material.dart';
import 'package:flutter_easy_date/flutter_easy_date.dart'; // Assuming you publish it as a package
import 'package:flutter/widgets.dart';

Future<void> main() async {
  await EasyDate.initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('EasyDate Example')),
        body: Center(
          child: ExampleUsage(),
        ),
      ),
    );
  }
}

class ExampleUsage extends StatefulWidget {
  @override
  State<ExampleUsage> createState() => _ExampleUsageState();
}

class _ExampleUsageState extends State<ExampleUsage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    Locale enLocale = Locale('en');
    Locale deLocale = Locale('de');

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Default Locale',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _showValue(
                'EasyDate.date(now):',
                EasyDate.date(now),
              ),
              _showValue(
                'EasyDate.dateTime(now):',
                EasyDate.dateTime(now),
              ),
              _showValue(
                'EasyDate.time(now, showSeconds: true):',
                EasyDate.time(now, showSeconds: true),
              ),
              _showValue(
                'EasyDate.time(now, showSeconds: false):',
                EasyDate.time(now, showSeconds: false),
              ),
              SizedBox(height: 20),
              Text(
                'Force English Locale',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _showValue(
                'EasyDate.date(now, locale: enLocale):',
                EasyDate.date(now, locale: enLocale),
              ),
              _showValue(
                'EasyDate.dateTime(now, locale: enLocale):',
                EasyDate.dateTime(now, locale: enLocale),
              ),
              _showValue(
                'EasyDate.time(now, locale: enLocale, showSeconds: true):',
                EasyDate.time(now, locale: enLocale, showSeconds: true),
              ),
              _showValue(
                'EasyDate.time(now, locale: enLocale, showSeconds: false):',
                EasyDate.time(now, locale: enLocale, showSeconds: false),
              ),
              SizedBox(height: 20),
              Text(
                'Force German Locale',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _showValue(
                'EasyDate.date(now, locale: deLocale):',
                EasyDate.date(now, locale: deLocale),
              ),
              _showValue(
                'EasyDate.dateTime(now, locale: deLocale):',
                EasyDate.dateTime(now, locale: deLocale),
              ),
              _showValue(
                'EasyDate.time(now, locale: deLocale, showSeconds: true):',
                EasyDate.time(now, locale: deLocale, showSeconds: true),
              ),
              _showValue(
                'EasyDate.time(now, locale: deLocale, showSeconds: false):',
                EasyDate.time(now, locale: deLocale, showSeconds: false),
              ),
              SizedBox(height: 20),
              Text(
                'Force Any Locale',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _showValue(
                'EasyDate.date(now, locale: Locale(\'fr\')):',
                EasyDate.date(now, locale: Locale('fr')),
              ),
              _showValue(
                'EasyDate.date(now, locale: Locale(\'sr\')):',
                EasyDate.date(now, locale: Locale('sr')),
              ),
              _showValue(
                'EasyDate.date(now, locale: Locale(\'ja\')):',
                EasyDate.date(now, locale: Locale('ja')),
              ),
              _showValue(
                'EasyDate.date(now, locale: Locale(\'ru\')):',
                EasyDate.date(now, locale: Locale('ru')),
              ),
              _showValue(
                'EasyDate.date(now, locale: Locale(\'xh\')):',
                EasyDate.date(now, locale: Locale('xh')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showValue(String usage, String value) {
    return RichText(
      text: TextSpan(
        text: '$usage ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(text: value, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
