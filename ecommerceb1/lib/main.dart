import 'package:ecommerceb1/custom-expanded-widget.dart';
import 'package:ecommerceb1/daraz-home-v2.dart';
import 'package:ecommerceb1/daraz-home.dart';
import 'package:ecommerceb1/home.dart';
import 'package:ecommerceb1/login.dart';
import 'package:ecommerceb1/newDashboard.dart';
import 'package:ecommerceb1/newDashboardV2.dart';
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
      home: DarazHomeV2View(),
    );
  }
}
