import 'package:flutter/material.dart';
import 'package:sports_event/ui/pages/home/home_page.dart';
import 'package:sports_event/util/exports.dart';

class SportsEventApp extends StatelessWidget {
  const SportsEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) =>
          AppLocalizations.of(context)?.appName ?? 'Sports Event',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        fontFamily: 'Inter',
        primaryColor: const Color(0XFF171E31),
        primaryColorLight: const Color(0XFFE7F4F8),
        scaffoldBackgroundColor: const Color(0XFFF3F3F3),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF171E31)),
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (BuildContext context) => const Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
