import 'package:flutter/cupertino.dart';

class OnBoardingModel {
  Widget richTextWidget;
  Widget avatarWidget;
  String description;
double value;
  String image;

  OnBoardingModel({
    required this.value,
    required this.image,
    required this.avatarWidget,
    required this.richTextWidget,
    required this.description,
  });
}
