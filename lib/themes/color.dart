import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DSColor {
  DSColor._();

  static const Color primaryBlue = Color(0xFF04559f);
  static const Color bgColor = Color(0xFFf7f8fa);
  static const Color successGreen = Color(0xFF7ac143);
  static const Color secondaryOrange = Color(0xFFd47c0a);

  static const MaterialColor directBlue = MaterialColor(
    _directRedPrimaryValue,
    <int, Color>{
      20: Color(0xFFcfe8ff),
      50: Color(0xFF3e91de),
      100: Color(_directRedPrimaryValue),
      200: Color(0xFF02427d),
    },
  );
  static const int _directRedPrimaryValue = 0xFF04559f;

  static const MaterialColor directGreen = MaterialColor(
    _directGreenPrimaryValue,
    <int, Color>{
      20: Color(0xFFd8f1c5),
      80: Color(0xFF9ddf6b),
      100: Color(_directGreenPrimaryValue),
      200: Color(0xFF609b33),
    },
  );
  static const int _directGreenPrimaryValue = 0xFF7ac143;

  static const MaterialColor directOrange = MaterialColor(
    _directOrangePrimaryValue,
    <int, Color>{
      20: Color(0xFFf5d7b0),
      80: Color(0xFFe7ac60),
      100: Color(_directOrangePrimaryValue),
      200: Color(0xFFa05b02),
    },
  );
  static const int _directOrangePrimaryValue = 0xFFd47c0a;
}
