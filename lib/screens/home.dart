import 'package:flutter/material.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/constant/search_widget.dart';
import 'package:food_app/constant/sizedbox.dart';
import 'package:food_app/constant/text_widget.dart';
import 'package:food_app/models/foodmenu_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Color(Appcolorconst.white),
          automaticallyImplyLeading: false,
          title: Textwidget(
              "Good Morning Noman!", 20, Appcolorconst.headingclor, ""),
          actions: [
            Image(image: AssetImage("assets/icons/cart.png")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textwidget("Delivering to", 14, Appcolorconst.txtcolor, ""),
              Row(
                children: [
                  Textwidget(
                      "Current Location", 20, Appcolorconst.headingclor, ""),
                  SpaceWidget(30, 0),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 40,
                    color: Color(Appcolorconst.orange),
                  )
                ],
              ),
              SpaceWidget(0, 40),
              SearchBarWidget(context),
              Container(
                height: 200,
                width: 400,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dummydata.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        width: 100,
                        child: Image(
                          image: AssetImage(dummydata[index].image),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
