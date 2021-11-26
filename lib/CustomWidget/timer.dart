import 'package:flutter/material.dart';
import 'package:healthyfood/Constants/app_constants.dart';

class CustomTimer extends StatelessWidget {
  const CustomTimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppConstants.appColorOrange,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      child: Row(
        children: const [
          Icon(
            Icons.timelapse_rounded,
            color: AppConstants.appColorWhite,
          ),
          Text(
            '25 min',
            style: TextStyle(color: AppConstants.appColorWhite),
          )
        ],
      ),
    );
  }
}
