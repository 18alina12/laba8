import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lab8/translations/locale_keys.g.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(LocaleKeys.payByBankCard.tr()),
      Text(LocaleKeys.needHelp.tr()),
      Row(
        children: [
          ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('ru'));
              },
              child: Text("ru")),
          ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('en'));
              },
              child: Text("en"))
        ],
      )
    ]);
  }
}
