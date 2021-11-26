import 'dart:async';

import 'package:flutter/material.dart';
import 'package:healthyfood/Constants/app_constants.dart';
import 'package:healthyfood/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomeScreen()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: ExactAssetImage('assets/images/sbg.jpg',),fit: BoxFit.cover) 
          // Image.asset('assets/images/sbg.jpg'),
        ),
        child: Center(
          child: Container(
            height:230,
            width: 230,
            decoration: BoxDecoration(
              color: AppConstants.appColorWhite.withOpacity(0.8),
              borderRadius: BorderRadius.circular(230)
            ),
            child:Center(
              child:Image.asset('assets/images/slogo.png')
            )
          ),
        ),
      ),
      
    );
  }
}