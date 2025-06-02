import 'package:flutter/material.dart';
import 'package:task_app/widget/task_widget.dart';

class TasksListWidget extends StatelessWidget {
  TasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Task(title: 'asd', date: 'asd');
      },
      itemCount: 23,
    );
  }
}
