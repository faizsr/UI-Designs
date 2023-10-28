import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final bool enableHeading;
  final IconData listIcon;
  final String listTitle;
  final String listSubtitle;

  FeatureCard({
    this.enableHeading = false,
    required this.listIcon,
    required this.listTitle,
    required this.listSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          enableHeading
              ? const Text(
                  'Features',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                )
              : const SizedBox(),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.purple.shade500,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  listIcon,
                  size: 30,
                  color: Colors.purple.shade500,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                listTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ),
            subtitle: Text(
              listSubtitle,
              style: const TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
