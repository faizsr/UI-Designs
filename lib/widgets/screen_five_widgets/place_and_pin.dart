import 'package:flutter/material.dart';

class PlaceAndPincode extends StatelessWidget {
  final String headingText;
  final String subtitleText;

  PlaceAndPincode({
    required this.headingText,
    required this.subtitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headingText,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              subtitleText,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
