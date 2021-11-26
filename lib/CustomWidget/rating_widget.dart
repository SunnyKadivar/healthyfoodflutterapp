import 'package:flutter/material.dart';
import 'package:healthyfood/Constants/app_constants.dart';
import 'package:healthyfood/Provider/theme_provider.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required this.themeProvider,
  }) : super(key: key);

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow.shade700),
        RichText(
          text: TextSpan(
            text: '4,8',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: themeProvider.darkTheme
                    ? AppConstants.appColorWhite
                    : AppConstants.appColorBlack),
            children: const <TextSpan>[
              TextSpan(
                  text: ' (18)',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppConstants.appCOlorPlaceHolder)),
            ],
          ),
        )
      ],
    );
  }
}
