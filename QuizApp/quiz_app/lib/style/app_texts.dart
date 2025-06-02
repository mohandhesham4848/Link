import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle h1(Color color) => TextStyle(
        fontSize: 24,
        height: 28 / 24,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle h2(Color color) => TextStyle(
        fontSize: 18,
        height: 21 / 18,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle h3(Color color) => TextStyle(
        fontSize: 16,
        height: 19 / 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle h4(Color color) => TextStyle(
        fontSize: 12,
        height: 14 / 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: color,
      );
}
