import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/style/app_colors.dart';
import 'package:quiz_app/style/app_texts.dart';
import 'package:quiz_app/widgets/answer_widget.dart';

class QuestionCard extends StatefulWidget {
  final QuestionModel questionModel;

  const QuestionCard({Key? key, required this.questionModel}) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int selectedIndex = -1;
  int? num;

  void onAnswerTap(int index) {
    setState(() {
      selectedIndex = selectedIndex == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionModel = widget.questionModel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: AppColor.secondaryViolet,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              const SizedBox(width: 5),
              questionModel.image,
              const SizedBox(width: 5),
              Text(
                'Question ${questionModel.number}',
                style: AppTextStyles.h3(Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(questionModel.question, style: AppTextStyles.h1(Colors.white)),
        const SizedBox(height: 20),
        Column(
          children: List.generate(questionModel.options.length, (index) {
            return GestureDetector(
              onTap: () => onAnswerTap(index),
              child: AnswerWidget(
                options: questionModel.options[index],
                color:
                    selectedIndex == index
                        ? AppColor.secondaryViolet
                        : Colors.white,
                icon:
                    selectedIndex == index
                        ? Assets.pushA.image()
                        : Assets.pushB.image(),
              ),
            );
          }),
        ),
        Spacer(),
      ],
    );
  }
}
