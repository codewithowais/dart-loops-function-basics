import 'package:ecommerceb1/firebase-screens/firebase-login.dart';
import 'package:ecommerceb1/firebase_options.dart';
import 'package:ecommerceb1/old/daraz-home-v2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirebaseLogin(),
    );
  }
}
