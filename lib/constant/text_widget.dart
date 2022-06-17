import 'package:flutter/material.dart';

Textwidget(String name, double fontSize, int ColorCode, String FontFamily) {
  return Text(
    name,
    style: TextStyle(
      fontSize: fontSize,
      color: Color(ColorCode),
      fontFamily: FontFamily,
    ),
  );
}
