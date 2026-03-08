import 'package:flutter/material.dart';
import 'package:pomo/presentation/themes/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
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
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    _jumpToTimerScreen();

  }

  void _jumpToTimerScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted){
        Navigator.pushReplacementNamed(context, '/timer_interface');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FOCUS WITH",
              style: AppTextStyles.textThemeColor(widget.textColor),
            ),
            SizedBox(height: screenHeight * 0.015),
            Text(
              "POMO",
              style: AppTextStyles.appNameTitleColor(widget.textColor),
            ),
            SizedBox(height: screenHeight * 0.06),
            Image.asset(
              widget.pomoCharacterImage,
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
