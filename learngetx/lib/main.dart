import 'package:flutter/material.dart';
import 'package:learngetx/views/cart/cart_view.dart';
import 'package:learngetx/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
