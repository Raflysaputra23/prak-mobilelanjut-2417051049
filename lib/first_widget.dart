import 'package:flutter/material.dart';

class FisrtWidget extends StatelessWidget {
  const FisrtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/working.png', width: 150, height: 150),
          const SizedBox(height: 50),
          ElevatedButton(onPressed: () { }, child: const Text("Ayo mulai belajar!"))
        ],
      ),
    );
  }
}