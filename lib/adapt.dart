library adapt;

import 'package:flutter/material.dart';
import 'dart:ui';

class Adapt {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topbarH = mediaQuery.padding.top;
  static double _botbarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static var _ratio;

  static init(int number){
    int uiWidth = number is int ? number : 750;
    _ratio = _width / uiWidth;
  }

  static double px(double number) {
    if(!(_ratio is double || _ratio is int)) {
      Adapt.init(750);
    }
    return number * _ratio;
  }

  static double onePx() {
    return 1 / _pixelRatio;
  }

  static double screenW() {
    return _width;
  }

  static double screenH() {
    return _height;
  }

  static double padTopH() {
    return _topbarH;
  }

  static double padBotH(){
    return _botbarH;
  }
}