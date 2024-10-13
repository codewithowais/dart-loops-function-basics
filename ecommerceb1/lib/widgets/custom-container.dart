import 'package:flutter/material.dart';

Widget customContainer(double height, double width, Color color, String title) {
  return Container(
    height: height,
    width: width,
    color: color,
    child: Text(title),
  );
}
