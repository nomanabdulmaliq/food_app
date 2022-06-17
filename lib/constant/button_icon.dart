import 'package:flutter/material.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';

import 'colors.dart';

IconButtonwidget(
    BuildContext context,
    String name,
    double fontsize,
    int ColorCode,
    String fontFamily,
    int BtnColor,
    int BorderColor,
    String IconSource) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Color(BorderColor)),
        borderRadius: BorderRadius.circular(40),
        color: Color(BtnColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(IconSource)),
          SpaceWidget(20, 0),
          Textwidget(name, fontsize, ColorCode, fontFamily),
        ],
      ),
    ),
  );
}
