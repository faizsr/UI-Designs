import 'package:flutter/material.dart';
import 'package:ui_designs_assignment/screen_two_home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[800],
        ),
      ),
      home: const SafeArea(
        child: ScreenTwoHome(),
      ),
    );
  }
}
