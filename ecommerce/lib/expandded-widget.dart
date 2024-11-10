import 'package:flutter/material.dart';

class ABC extends StatefulWidget {
  const ABC({super.key});

  @override
  State<ABC> createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          // Expanded(
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
