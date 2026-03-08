import 'package:flutter/material.dart';

import 'presentation/screens/timer_screen.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/themes/app_colors.dart';
import 'presentation/themes/app_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomo',
      home: const SplashScreen(
        backgroundColor: AppColors.darkSplashScreenBackground,
        textColor: AppColors.darkThemeText,
        pomoCharacterImage: 'assets/images/pomo_character_for_dark_theme.png',
      ),
      // routes: {
      //   '/time_interface': (context) => TimerScreen(),
      // },
    );
  }
}
