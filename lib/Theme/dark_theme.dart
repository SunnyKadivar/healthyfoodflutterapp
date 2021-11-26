import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthyfood/Constants/app_constants.dart';

ThemeData dark = ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light), 
        ),
        scaffoldBackgroundColor: Colors.black,
        primarySwatch : appColorPrimary,
        brightness : Brightness.dark,
      );