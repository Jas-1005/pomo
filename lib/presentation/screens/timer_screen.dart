import 'package:flutter/material.dart';
import 'package:pomo/presentation/themes/app_colors.dart';
import 'package:pomo/presentation/themes/app_text_styles.dart';
import 'package:pomo/models/pomo_modes.dart';
import 'package:pomo/presentation/widgets/mode_selector.dart';


class TimerScreen extends StatefulWidget {
  final Color backgroundColor;
  final Color textColor;

  const TimerScreen({
    super.key,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen>{
  PomoMode defaultMode = PomoMode.focus;

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.10),
            ModeSelector(
                textColor: widget.textColor,
                onModeChanged: (PomoMode newMode){
                  print("Switched to $newMode");
                  setState(() {

                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}