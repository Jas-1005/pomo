import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {

  // MAIN TITLE  "POMO"
  static const TextStyle _appNameScreenTitle = TextStyle(
    fontFamily: 'Airone',
    fontSize: 48.0,
  );

  static const TextStyle _textSplashScreen = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.0,
  );

  // static const TextStyle _textSplashScreen = TextStyle(
  //   fontFamily: 'Inter',
  //   fontSize: 20.0,
  // );

  static TextStyle appNameTitleColor(Color textColor){
    return _appNameScreenTitle.copyWith(color: textColor);
  }

  static TextStyle textThemeColor(Color textColor){
    return _textSplashScreen.copyWith(color: textColor);
  }

}