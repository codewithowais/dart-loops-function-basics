import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          leading: const Text("Leading"),
          title: const Text("Whatsapp"),
          actions: const [
            Text("Action 1"),
            Text("Action 2"),
            Text("Action 3"),
            Text("Action 4"),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              customContainer(200, 200, Colors.red, "A"),
              customContainer(200, 200, Colors.blue, "B"),
              customContainer(200, 200, Colors.purple, "C"),
              customContainer(200, 200, Colors.green, "D"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customContainer(double height, double width, Color color, String title) {
  return Container(
    height: height,
    width: width,
    color: color,
    child: Text(title),
  );
}
