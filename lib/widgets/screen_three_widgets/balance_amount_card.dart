import 'package:flutter/material.dart';

class BalanceAmountCard extends StatelessWidget {
  final String titleText;
  final String amountText;
  final Color cardColor;

  BalanceAmountCard({
    required this.titleText,
    required this.amountText,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 100,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Text(
              amountText,
              style: const TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
