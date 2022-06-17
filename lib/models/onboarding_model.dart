import 'package:flutter/material.dart';

class OnboardingContent {
  final String image;
  final String title;
  final String discription;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<OnboardingContent> content = [
  OnboardingContent(
    image: "assets/images/1.png",
    title: "Find Food You Love",
    discription:
        "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
  ),
  OnboardingContent(
    image: "assets/images/2.png",
    title: "Fast Delivery",
    discription: "Fast food delivery to your home, office\nwherever you are",
  ),
  OnboardingContent(
    image: "assets/images/3.png",
    title: "Live Tracking",
    discription:
        "Real time tracking of your food on the app\nonce you placed the order",
  ),
];
