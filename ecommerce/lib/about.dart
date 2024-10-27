import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 8.0),
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}
