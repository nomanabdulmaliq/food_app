import 'package:flutter/material.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';
import 'package:food_app/constant/textfield.dart';
import 'package:food_app/screens/login.dart';
import 'package:food_app/screens/otpscreen.dart';

import '../constant/button.dart';
import '../constant/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpaceWidget(0, 50),
            Textwidget("Sign Up", 30, Appcolorconst.headingclor, ""),
            SpaceWidget(0, 20),
            Textwidget(
                "Add your details to sign up", 16, Appcolorconst.txtcolor, ""),
            SpaceWidget(0, 30),
            TextFielddWidget(context, "Name"),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Email"),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Mobile No"),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Address"),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Password"),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Confirm Password"),
            SpaceWidget(0, 20),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const OTPScreen()),
                );
              },
              child: Buttonwidget(context, "Sign Up", 18, Appcolorconst.white,
                  "", Appcolorconst.orange, Appcolorconst.orange),
            ),
            SpaceWidget(0, 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textwidget("Already have an Accounr? ", 16,
                    Appcolorconst.txtcolor, ""),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Textwidget("Login", 16, Appcolorconst.orange, ""),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
