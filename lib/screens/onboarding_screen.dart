import 'package:flutter/material.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';
import 'package:food_app/models/onboarding_model.dart';
import 'package:food_app/screens/home.dart';

import '../constant/button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: content.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Image.asset(
                        content[i].image,
                        height: 300,
                      ),
                      SpaceWidget(0, 70),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            content.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                      SpaceWidget(0, 70),
                      Textwidget(
                          content[i].title, 30, Appcolorconst.headingclor, ""),
                      SpaceWidget(0, 30),
                      Textwidget(content[i].discription, 18,
                          Appcolorconst.txtcolor, "")
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: FlatButton(
              child: Text(
                currentIndex == content.length - 1 ? "Continue" : "Next",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                if (currentIndex == content.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              color: Color(Appcolorconst.orange),
              textColor: Color(Appcolorconst.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 12,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(Appcolorconst.orange),
      ),
    );
  }
}
