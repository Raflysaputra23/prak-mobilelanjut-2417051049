import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      body: const Center(
        child: Hero(
          tag: 'hero-ikon',
          child: Icon(
            Icons.rocket_launch,
            size: 160,
            color: Colors.indigo,
            semanticLabel: 'Ikon roket',
          ),
        ),
      ),
    );
  }
}