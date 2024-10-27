import 'package:ecommerceb1/home.dart';
import 'package:ecommerceb1/login.dart';
import 'package:ecommerceb1/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
