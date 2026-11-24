import 'dart:developer' as developer;

double celciusKeFahrenheit(double celcius) {
    developer.log("Menghitung konversi untuk: $celcius C", name: "SuhuHelper");

    if (celcius < -273.15) {
        throw ArgumentError("Suhu tidak boleh kurang dari -273.15");
    }

    final hasil = (celcius * 9 / 5) + 32;
    developer.log("Hasil konversi: $hasil F", name: "SuhuHelper");
    return hasil;
}