import 'package:flutter/material.dart';

class Heroo extends StatefulWidget {
  const Heroo({super.key});

  @override
  State<Heroo> createState() => _HerooState();
}

class _HerooState extends State<Heroo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: Image.asset(
            'assets/jp.jpg',
            width: 300.0,
          ),
        ),
      ),
    );
  }
}
