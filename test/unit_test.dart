
import 'package:flutter_test/flutter_test.dart';
import 'package:prak_testing_debugging/suhu_helper.dart';



void main() {
    test('Konversi 0C menjadi 32F', () {
        expect(celciusKeFahrenheit(0), 32);
    });

    test('Melempar error jika suhu di bawah -273.15', () {
        expect(() => celciusKeFahrenheit(-300), throwsArgumentError);
    });
}