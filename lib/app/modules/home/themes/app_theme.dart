import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primary = Color(0xFFFF5F50);
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundContainer = Color(0xFFF6F6F6);
  static const Color icons = Color(0xFFBDB3A3);
  static const Color text = Color(0xFF4F4B3D);
  static const Color text2 = Color(0xFFBDB3A3);

  static ThemeData themeData() {
    return ThemeData(
        primaryColor: primary,
        cardColor: background,
        backgroundColor: background,
        scaffoldBackgroundColor: background,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: text,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            color: text,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: text,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: text2,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          bodyText2: TextStyle(
            color: text2,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: background,
          iconTheme: IconThemeData(color: Color(0xFF4F4B3D)),
        ));
  }
}
