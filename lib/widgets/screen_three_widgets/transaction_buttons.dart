import 'package:flutter/material.dart';

class TransactionButtons extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonColor;

  TransactionButtons({
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            buttonText,
            style: TextStyle(
              color: buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
