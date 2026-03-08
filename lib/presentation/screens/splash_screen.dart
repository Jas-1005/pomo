import 'package:flutter/material.dart';
import 'package:pomo/presentation/themes/app_text_styles.dart';

class SplashScreen extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String pomoCharacterImage;

  const SplashScreen({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.pomoCharacterImage,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
   return Scaffold(
     backgroundColor: backgroundColor,
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "FOCUS WITH",
            style: AppTextStyles.textThemeColor(textColor),
          ),
          SizedBox(height: screenHeight * 0.015),
          Text(
            "POMO",
            style: AppTextStyles.appNameTitleColor(textColor),
          ),
          SizedBox(height: screenHeight * 0.06),
          Image.asset(
            pomoCharacterImage,
            height: screenHeight * 0.55,
            width: screenWidth * 1,
            fit: BoxFit.contain,
          ),
        ],
      ),
     ),
   );
  }
}
