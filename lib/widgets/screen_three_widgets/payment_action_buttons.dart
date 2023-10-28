import 'package:flutter/material.dart';

class PaymentActionButton extends StatelessWidget {
  final String titleText;
  final double? titleTextSize;
  final FontWeight? titleTextFontWeight;
  final String trailingText;
  final IconData trailingIcon;
  final double trailingIconSize;

  PaymentActionButton({
    required this.titleText,
    this.titleTextSize,
    this.titleTextFontWeight,
    required this.trailingText,
    required this.trailingIcon,
    required this.trailingIconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: TextStyle(
            fontSize: titleTextSize,
            fontWeight: titleTextFontWeight,
          ),
        ),
        Row(
          children: [
            Text(
              trailingText,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              trailingIcon,
              size: trailingIconSize,
              color: Colors.grey,
            ),
          ],
        )
      ],
    );
  }
}
