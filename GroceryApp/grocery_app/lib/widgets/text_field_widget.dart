import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final double width;
  final double height;
  final Color color;
  final bool obscureText;
  final Icon? icon;
  const TextFieldWidget({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.width,
    required this.height,
    required this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,

          fillColor: Colors.white.withOpacity(0.6),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: color, width: 1.1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: color, width: 1.2),
          ),
        ),
      ),
    );
  }
}
