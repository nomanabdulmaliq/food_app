import 'package:flutter/material.dart';
import 'package:food_app/constant/bottom_line.dart';
import 'package:food_app/constant/button.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';
import 'package:food_app/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage(
                    'assets/images/welcometop2.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SpaceWidget(0, 40),
          Textwidget(
              "    Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
              13,
              Appcolorconst.txtcolor,
              ""),
          SpaceWidget(0, 50),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: Buttonwidget(context, "Login", 18, Appcolorconst.white, "",
                0.07, 1, Appcolorconst.orange, Appcolorconst.orange),
          ),
          SpaceWidget(0, 20),
          Buttonwidget(context, "Create an account", 18, Appcolorconst.orange,
              "", 0.07, 1, Appcolorconst.white, Appcolorconst.orange),
          SpaceWidget(0, 30),
          BottomLine(),
        ],
      ),
    );
  }
}
