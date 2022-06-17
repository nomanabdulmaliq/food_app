import 'package:flutter/material.dart';
import 'package:food_app/screens/onboarding_screen.dart';

import '../constant/button.dart';
import '../constant/colors.dart';
import '../constant/sizedbox.dart';
import '../constant/text_widget.dart';
import '../constant/textfield.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonwidget = Buttonwidget;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SpaceWidget(0, 50),
            Textwidget("New Password", 30, Appcolorconst.headingclor, ""),
            SpaceWidget(0, 10),
            Textwidget(
                "Please enter your email to receive a\nlink to  create a new password via email",
                16,
                Appcolorconst.txtcolor,
                ""),
            SpaceWidget(0, 40),
            TextFielddWidget(context, "New Password"),
            SpaceWidget(0, 20),
            TextFielddWidget(context, "Confirm Password"),
            SpaceWidget(0, 30),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoardingScreen()),
                );
              },
              child: buttonwidget(context, "Next", 18, Appcolorconst.white, "",
                  Appcolorconst.orange, Appcolorconst.orange),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
