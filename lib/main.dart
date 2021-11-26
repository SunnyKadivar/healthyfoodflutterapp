import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthyfood/Constants/app_constants.dart';
import 'package:healthyfood/Screens/home_screen.dart';
import 'package:healthyfood/Theme/dark_theme.dart';
import 'package:provider/provider.dart';

import 'Provider/theme_provider.dart';
import 'Screens/splash_screen.dart';
import 'Theme/light_theme.dart';


void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) =>ThemeProvider()),
    ],
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Healthy Food',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
      // home: HomeScreen(),
      home: SplashScreen(),
    );
    

  }
}
