import 'package:flutter/material.dart';
import 'package:quiz_app/style/app_colors.dart';

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const BackButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      label: const Text(
        'Back',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColor.secondaryViolet),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
