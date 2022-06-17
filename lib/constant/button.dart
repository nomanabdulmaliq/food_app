import 'package:flutter/material.dart';
import 'package:food_app/constant/text_widget.dart';

import 'colors.dart';

Buttonwidget(
    BuildContext context,
    String name,
    double fontsize,
    int ColorCode,
    String fontFamily,
    double MediaQueryHieght,
    double MediaQueryWidth,
    int BtnColor,
    int BorderColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Container(
      height: MediaQuery.of(context).size.height * MediaQueryHieght,
      width: MediaQuery.of(context).size.width * MediaQueryWidth,
      decoration: BoxDecoration(
        border: Border.all(color: Color(BorderColor)),
        borderRadius: BorderRadius.circular(40),
        color: Color(BtnColor),
      ),
      child: Center(
        child: Textwidget(name, fontsize, ColorCode, fontFamily),
      ),
    ),
  );
}
