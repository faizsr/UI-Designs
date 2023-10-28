import 'package:flutter/material.dart';
import 'package:ui_designs_assignment/widgets/screen_one_widget/on_off_button.dart';

class ScreenOne extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;
  final IconData? trailingIcon;
  final bool displayswitch;

  ScreenOne({
    required this.leadingIcon,
    required this.titleText,
    this.trailingIcon,
    this.displayswitch = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              leadingIcon,
              size: 26,
            ),
            title: Text(
              titleText,
              style: const TextStyle(fontSize: 16),
            ),
            trailing: displayswitch
                ? const OnOffButton()
                : Icon(
                    trailingIcon,
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}
