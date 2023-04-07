import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueAccent,
        primary: Colors.blueAccent,
        background: Colors.white,
      ),
    );
  }
}
