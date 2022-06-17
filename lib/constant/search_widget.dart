import 'package:flutter/material.dart';

import 'colors.dart';

SearchBarWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2),
    child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(40)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Color(Appcolorconst.txtcolor),
                    ),
                    hintText: "Search food",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Color(0xffB6B7B7),
                    ),
                    border: InputBorder.none,
                  )),
            ))),
  );
}
