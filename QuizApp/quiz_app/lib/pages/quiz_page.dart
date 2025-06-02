import 'package:flutter/material.dart';

import 'package:quiz_app/widgets/question_manger.dart';

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141829),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/GRADINET (2).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 90),
              SizedBox(height: 20),
               Expanded(child: QuestionManger()),
            ],
          ),
        ),
      ),
    );
  }
}
