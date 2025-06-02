import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/back_button.dart';
import 'package:quiz_app/widgets/next_button.dart';

import 'package:quiz_app/widgets/question_card.dart';

class QuestionManger extends StatefulWidget {
  @override
  State<QuestionManger> createState() => _QuestionMangerState();
}

class _QuestionMangerState extends State<QuestionManger> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

 

  void goToNextPage() {
    if (currentPage < 3) {
      currentPage++;
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToPreviousPage() {
    if (currentPage > 0) {
      currentPage--;
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [
              QuestionCard(questionModel: questions[0]),
              QuestionCard(questionModel: questions[1]),
              QuestionCard(questionModel: questions[2]),
              QuestionCard(questionModel: questions[3]),
            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonWidget(onPressed: goToPreviousPage),
            const SizedBox(width: 170),
            NextButtonWidget(onPressed: goToNextPage),
          ],
        ),

        const SizedBox(height: 45),
      ],
    );
  }
}
