import 'package:flutter/material.dart';
import 'package:prakmola_rafly/detail_page.dart';
import 'assets_media.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assets Media & Navigation',

      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4D63D9),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AssetsMediaPage(),
        '/detail': (context) => const DetaiPage()
      },
      // home: const AssetsMediaPage(),
    );
  }
}