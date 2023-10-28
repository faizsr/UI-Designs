import 'package:flutter/material.dart';

class OnOffButton extends StatefulWidget {
  const OnOffButton({super.key});

  @override
  State<OnOffButton> createState() => _OnOffButtonSampleState();
}

class _OnOffButtonSampleState extends State<OnOffButton> {
  bool light0 = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.purple,
      activeTrackColor: Colors.blue[100],
      value: light0,
      onChanged: (bool value) {
        setState(
          () {
            light0 = value;
          },
        );
      },
    );
  }
}
