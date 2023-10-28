import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final String titleText;
  final Color? titleTextColor;
  final double? titleTextSize;
  final String? trailingText;
  final Color? trailingTextColor;
  final double? trailingTextSize;
  final IconData? trailingIcon;
  final double? trailingIconSize;
  final FontWeight? textFontWeight;
  final bool enableTrailing;

  ListTileCustom({
    required this.titleText,
    this.titleTextColor,
    this.titleTextSize,
    this.trailingText,
    this.trailingTextColor,
    this.trailingTextSize,
    this.trailingIcon,
    this.trailingIconSize,
    this.textFontWeight,
    this.enableTrailing = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        titleText,
        style: TextStyle(
          fontSize: titleTextSize,
          fontWeight: textFontWeight,
          color: titleTextColor,
        ),
      ),
      trailing: SizedBox(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              trailingIcon,
              size: trailingIconSize,
              color: Colors.purple,
            ),
            const SizedBox(
              width: 5,
            ),
            enableTrailing
                ? Text(
                    trailingText.toString(),
                    style: TextStyle(
                      fontSize: trailingTextSize,
                      fontWeight: textFontWeight,
                      color: trailingTextColor,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
