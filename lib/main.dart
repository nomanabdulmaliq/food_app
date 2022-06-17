import 'package:flutter/material.dart';
import 'package:food_app/constant/colors.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      ),
      home: HomeScreen(),
    );
  }
}
