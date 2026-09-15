import 'package:flutter/material.dart';
import 'package:prakmola_rafly/first_widget.dart';
import 'package:prakmola_rafly/form_widget.dart';
// import 'package:prakmola_rafly/column_widget.dart';
// import 'package:prakmola_rafly/row_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Mobile Lanjut',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple
        ),
        useMaterial3: true
      ),
      home: const Center(
        child: FormWidget(),
      ),
    );
  }
}

