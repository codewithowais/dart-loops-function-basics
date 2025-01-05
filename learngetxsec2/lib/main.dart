import 'package:flutter/material.dart';
import 'package:learngetxsec2/views/home/home_view.dart';

void main() {
  runApp(const LearnGetXAPP());
}

class LearnGetXAPP extends StatelessWidget {
  const LearnGetXAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
