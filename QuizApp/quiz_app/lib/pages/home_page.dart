import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz_page.dart';
import 'package:quiz_app/style/app_colors.dart';
import 'package:quiz_app/style/app_texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141829),

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/GRADINET (2).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity, height: 70),
            Text('Good morning,', style: AppTextStyles.h3(Colors.white)),
            SizedBox(height: 20),
            Text('New topic is waiting', style: AppTextStyles.h1(Colors.white)),
            Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  QuizPage()),
                  );
                },
                child: Container(
                  width: 390,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      'Start Quiz',
                      style: AppTextStyles.h1(AppColor.mainViolet),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
//