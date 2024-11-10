import 'package:flutter/material.dart';

class CustomExpandedView extends StatefulWidget {
  const CustomExpandedView({super.key});

  @override
  State<CustomExpandedView> createState() => _CustomExpandedViewState();
}

class _CustomExpandedViewState extends State<CustomExpandedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
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
