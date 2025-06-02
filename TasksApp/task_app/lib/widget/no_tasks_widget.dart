import 'package:flutter/material.dart';

class NoTasksWidget extends StatelessWidget {
  const NoTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 290),
        Icon(Icons.check_circle_outline, color: Colors.teal.shade200, size: 72),
        const SizedBox(height: 12),
        const Text(
          'No tasks yet',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Add a task to get started',
          style: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ],
    );
  }
}
