import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenHeight = 0;
  static double screenWidth = 0;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionalScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.orientation == Orientation.portrait
      ? SizeConfig.screenHeight
      : SizeConfig.screenWidth;
  return (inputHeight / screenHeight) * screenHeight;
}

double getPropotionalScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.orientation == Orientation.portrait
      ? SizeConfig.screenWidth
      : SizeConfig.screenHeight;
  return (inputWidth / screenWidth) * screenWidth;
}
