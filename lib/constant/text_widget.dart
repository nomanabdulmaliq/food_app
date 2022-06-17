import 'package:flutter/material.dart';

Textwidget(String name, double fontSize, int ColorCode, String FontFamily) {
  return Text(
    name,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: fontSize,
      color: Color(ColorCode),
      fontFamily: FontFamily,
    ),
  );
}
