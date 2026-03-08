import 'package:flutter/material.dart';
import 'package:pomo/models/pomo_modes.dart';
import 'package:pomo/presentation/themes/app_text_styles.dart';

class ModeSelector extends StatefulWidget {
  final Color textColor;
  final Function(PomoMode) onModeChanged;

  const ModeSelector({
    super.key,
    required this.textColor,
    required this.onModeChanged,
  });

  @override
  State<ModeSelector> createState() => _ModeSelector();
}

class _ModeSelector extends State<ModeSelector> {
  PomoMode currentMode = PomoMode.focus;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DropdownMenu <PomoMode>(
          width: screenWidth * 0.525,
          initialSelection: PomoMode.focus,
          requestFocusOnTap: false,
          leadingIcon: _getIconPomoMode(currentMode),
          trailingIcon: Icon(Icons.keyboard_arrow_down, color: widget.textColor),
          textStyle: AppTextStyles.textThemeColor(widget.textColor).copyWith(
              fontSize: 18),
          menuStyle: MenuStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
            elevation: WidgetStatePropertyAll(0),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.transparent,
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
          onSelected: (PomoMode? value) {
            if (value != null) {
              widget.onModeChanged(value);
              currentMode = value;
            }
          },
          dropdownMenuEntries: <DropdownMenuEntry<PomoMode>>[
            DropdownMenuEntry(value: PomoMode.focus,
                label: 'Focus Time',
                leadingIcon: _getIconPomoMode(PomoMode.focus),
                style: MenuItemButton.styleFrom(
                  foregroundColor: widget.textColor,
                  textStyle: AppTextStyles.textThemeColor(widget.textColor).copyWith(fontSize: 16),
                ),
            ),
            DropdownMenuEntry(value: PomoMode.shortBreak,
                label: 'Short Break',
                leadingIcon: _getIconPomoMode(PomoMode.shortBreak),
                style: MenuItemButton.styleFrom(
                  foregroundColor: widget.textColor,
                  textStyle: AppTextStyles.textThemeColor(widget.textColor).copyWith(fontSize: 16),
                ),
            ),
            DropdownMenuEntry(value: PomoMode.focusFire,
                label: 'Focus Fire',
                leadingIcon: _getIconPomoMode(PomoMode.focusFire),
                style: MenuItemButton.styleFrom(
                  foregroundColor: widget.textColor,
                  textStyle: AppTextStyles.textThemeColor(widget.textColor).copyWith(fontSize: 16),
                ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _getIconPomoMode(PomoMode mode){
  const double iconSize = 24.0;
  
  switch (mode){
    case PomoMode.focus:
      return Image.asset('assets/images/pomo_character_for_dark_theme.png', height: iconSize);
    case PomoMode.focusFire:
      return Image.asset('assets/images/focus_fire_icon.png', height: iconSize);
    case PomoMode.shortBreak:
      return Image.asset('assets/images/pomo_character_for_dark_theme.png', height: iconSize);
  }
}
