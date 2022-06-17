import 'package:flutter/material.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/screens/onboarding_screen.dart';

import '../constant/button.dart';
import '../constant/text_widget.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SpaceWidget(0, 50),
            Textwidget("We have sent an OTP to\nyour Mobile", 30,
                Appcolorconst.headingclor, ""),
            SpaceWidget(0, 20),
            Textwidget(
                "Please check your mobile number +92*****12\ncontinue to reset your password",
                16,
                Appcolorconst.txtcolor,
                ""),
            SpaceWidget(0, 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.number,
                                cursorColor: Color(0xffB6B7B7),
                                cursorWidth: 3.0,
                                cursorHeight: 30,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffB6B7B7),
                                  // fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.number,
                                cursorColor: Color(0xffB6B7B7),
                                cursorWidth: 3.0,
                                cursorHeight: 30,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffB6B7B7),
                                  // fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.number,
                                cursorColor: Color(0xffB6B7B7),
                                cursorWidth: 3.0,
                                cursorHeight: 30,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffB6B7B7),
                                  // fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.number,
                                cursorColor: Color(0xffB6B7B7),
                                cursorWidth: 3.0,
                                cursorHeight: 30,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffB6B7B7),
                                  // fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ))),
                ),
              ],
            ),
            SpaceWidget(0, 30),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoardingScreen()),
                );
              },
              child: Buttonwidget(context, "Next", 18, Appcolorconst.white, "",
                  Appcolorconst.orange, Appcolorconst.orange),
            ),
            SpaceWidget(0, 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textwidget("Didn't Recieve? ", 16, Appcolorconst.txtcolor, ""),
                Textwidget("Click here", 16, Appcolorconst.orange, "")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
