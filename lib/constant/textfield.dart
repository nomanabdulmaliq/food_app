import 'package:flutter/material.dart';

TextFielddWidget(
  BuildContext context,
  String fieldText,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(40)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Center(
              child: TextField(
                  cursorColor: Color(0xffB6B7B7),
                  cursorWidth: 3.0,
                  cursorHeight: 30,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffB6B7B7),
                    // fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: fieldText,
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xffB6B7B7),
                    ),
                    border: InputBorder.none,
                  )),
            ))),
  );
}
