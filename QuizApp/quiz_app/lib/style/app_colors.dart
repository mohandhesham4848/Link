import 'package:flutter/material.dart';

abstract class AppColor {
  static const Color mainViolet = Color(0xff2B0063);
  static const Color secondaryViolet = Color(0xff8E84FF);
}

abstract class AppColorsGradiant {
  final LinearGradient appGradient = LinearGradient(
    colors: [Color(0xff060B26), Color(0xff1A1F37)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,  
  );
}
