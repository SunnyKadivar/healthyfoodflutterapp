import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthyfood/Constants/app_constants.dart';

ThemeData light = ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark), 
        ),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch : appColorPrimary,
        brightness : Brightness.light,
      );