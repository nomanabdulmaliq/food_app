import 'package:flutter/material.dart';
import 'package:food_app/constant/button.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';
import 'package:food_app/constant/textfield.dart';
import 'package:food_app/screens/new_password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SpaceWidget(0, 50),
            Textwidget("Reset Password", 30, Appcolorconst.headingclor, ""),
            SpaceWidget(0, 10),
            Textwidget(
                "Please enter your email to receive a\nlink to  create a new password via email",
                16,
                Appcolorconst.txtcolor,
                ""),
            SpaceWidget(0, 40),
            TextFielddWidget(context, "Email"),
            SpaceWidget(0, 30),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewPasswordScreen()),
                );
              },
              child: Buttonwidget(context, "Send", 18, Appcolorconst.white, "",
                  Appcolorconst.orange, Appcolorconst.orange),
            ),
          ],
        ),
      ),
    );
  }
}
