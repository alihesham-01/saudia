import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saudia_project/explore_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [ Locale('ar'),Locale('en')],
      path: 'assets/langs', // مسار ملفات الترجمة
      fallbackLocale: const Locale('ar'), // لغة افتراضية احتياطية
      startLocale: const Locale('ar'), // اللغة الافتراضية عند بدء التطبيق
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: const ExplorePage(),
    );
  }
}
