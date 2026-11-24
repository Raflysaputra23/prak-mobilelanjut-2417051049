// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:prak_testing_debugging/main.dart';

void main() {
  testWidgets('Uji interaksi form konversi suhu', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: KonversiSuhuPage()));

    expect(find.text('Hasil: -'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('input_suhu')), '100');
    await tester.tap(find.byKey(const Key('btn_konversi')));
    await tester.pump();

    expect(find.text('Hasil: 212.0 F'), findsOneWidget);
  });
}
