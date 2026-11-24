import 'package:flutter/material.dart';

import 'suhu_helper.dart';

void main() => runApp(const MaterialApp(home: KonversiSuhuPage()));

class KonversiSuhuPage extends StatefulWidget {
  const KonversiSuhuPage({super.key});

  @override
  State<KonversiSuhuPage> createState() => _KonversiSuhuPageState();
}

class _KonversiSuhuPageState extends State<KonversiSuhuPage> {
  final _controller = TextEditingController();
  String _output = 'Hasil: -';

  void _hitung() {
    try {
      final celcius = double.parse(_controller.text);
      final fahrenheit = celciusKeFahrenheit(celcius);
      setState(() => _output = 'Hasil: ${fahrenheit.toStringAsFixed(1)} °F');
    } on FormatException {
      setState(() => _output = 'Error: Masukkan angka yang valid');
    } on ArgumentError catch (e) {
      setState(() => _output = 'Error: ${e.message}');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Konverter Suhu')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              key: const Key('input_suhu'),
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Suhu Celcius (°C)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              key: const Key('btn_konversi'),
              onPressed: _hitung,
              child: const Text('Konversi'),
            ),
            const SizedBox(height: 20),
            Text(_output, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}