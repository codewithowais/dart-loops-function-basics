import 'package:ecommerce/about.dart';
import 'package:ecommerce/dashboard.dart';
import 'package:ecommerce/login.dart';
import 'package:ecommerce/newDashboard.dart';
import 'package:ecommerce/newDashboardv2.dart';
import 'package:ecommerce/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Newdashboardv2View(),
    );
  }
}
