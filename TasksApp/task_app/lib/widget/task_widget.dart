import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String date;
  Task({super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 90,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 181, 181, 192),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Checkbox(value: true, onChanged: (_) {}),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(date),
            ],
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
