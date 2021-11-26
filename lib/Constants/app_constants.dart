import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: const Color.fromRGBO(27, 127, 237, .1),
  100: const Color.fromRGBO(27, 127, 237, .2),
  200: const Color.fromRGBO(27, 127, 237, .3),
  300: const Color.fromRGBO(27, 127, 237, .4),
  400: const Color.fromRGBO(27, 127, 237, .5),
  500: const Color.fromRGBO(27, 127, 237, .6),
  600: const Color.fromRGBO(27, 127, 237, .7),
  700: const Color.fromRGBO(27, 127, 237, .8),
  800: const Color.fromRGBO(27, 127, 237, .9),
  900: const Color.fromRGBO(27, 127, 237, 1),
};

MaterialColor appColorPrimary = MaterialColor(0xffB2DB5B, color);

class AppConstants {

  static const Color appColorOrange = Color(0xffFF8532);

  static const Color appColorWhite = Color(0xffffffff);

  static const Color appColorBlack = Color(0xff000000);
  static const Color appColorLightBlack = Color(0xff2C2C2C);

  static const Color appColorGrey = Color(0xff9e9e9e);

  static const Color appCOlorPlaceHolder = Color(0xffbdbdbd);
  // static const Color appColorPlaceHolder = Colors.grey.shade300;

}
