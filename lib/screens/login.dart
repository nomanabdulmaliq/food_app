import 'package:flutter/material.dart';
import 'package:food_app/constant/bottom_line.dart';
import 'package:food_app/constant/button.dart';
import 'package:food_app/constant/button_icon.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';
import 'package:food_app/constant/textfield.dart';
import 'package:food_app/screens/otpscreen.dart';
import 'package:food_app/screens/reset_password.dart';
import 'package:food_app/screens/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpaceWidget(0, 50),
            Textwidget("Login", 30, Appcolorconst.headingclor, ""),
            SpaceWidget(0, 20),
            Textwidget(
                "Add your details to login", 16, Appcolorconst.txtcolor, ""),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Your Email"),
            SpaceWidget(0, 30),
            TextFielddWidget(context, "Password"),
            SpaceWidget(0, 30),
            InkWell(
              child: Buttonwidget(context, "Login", 18, Appcolorconst.white, "",
                  Appcolorconst.orange, Appcolorconst.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OTPScreen()),
                );
              },
            ),
            SpaceWidget(0, 30),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen()),
                );
              },
              child: Textwidget(
                  "Forgot your password?", 16, Appcolorconst.txtcolor, ""),
            ),
            SpaceWidget(0, 50),
            Textwidget("or Login With", 16, Appcolorconst.txtcolor, ""),
            SpaceWidget(0, 30),
            IconButtonwidget(
                context,
                "Login with facebook",
                18,
                Appcolorconst.white,
                "",
                Appcolorconst.blue,
                Appcolorconst.blue,
                "assets/icons/facebook.png"),
            SpaceWidget(0, 30),
            IconButtonwidget(
                context,
                "Login with Google",
                18,
                Appcolorconst.white,
                "",
                Appcolorconst.red,
                Appcolorconst.red,
                "assets/icons/google.png"),
            SpaceWidget(0, 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textwidget(
                    "Don't have an Account? ", 16, Appcolorconst.txtcolor, ""),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Textwidget("Sign up", 16, Appcolorconst.orange, ""),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
