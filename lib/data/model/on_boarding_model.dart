import 'package:flutter/cupertino.dart';

class OnBoardingModel {
  Widget richTextWidget;
  Widget avatarWidget;
  String description;

  String image;

  OnBoardingModel({
    required this.image,
    required this.avatarWidget,
    required this.richTextWidget,
    required this.description,
  });
}
