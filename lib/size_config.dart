import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = 1 as MediaQueryData;
  static double screenWidth = 1080;
  static double screenHeight = 1920;
  static double defaultSize = 10;
//  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

//    defaultSize = orientation == Orientation.landscape
//      ? screenWidth * 0.024
//      : screenHeight * 0.024;}
}