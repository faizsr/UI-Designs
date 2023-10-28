import 'package:flutter/material.dart';

class HelpSectionButton extends StatelessWidget {
  const HelpSectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 10,
        right: 20,
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Select Domain',
              style: TextStyle(
                fontSize: 17,
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(
            width: 220,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.purple,
              ),
              onPressed: () {},
              child: const Text(
                'Get Premium',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
