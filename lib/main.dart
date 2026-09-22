import 'package:flutter/material.dart';
import 'package:prakmola_rafly/app_theme.dart';
import 'package:prakmola_rafly/responsive_profile.dart';

void main() {
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Praktikum Mobile Lanjut",
      theme: AppTheme.ligthTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: ResponsiveProfile(onThemeChanged: toggleTheme)
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

