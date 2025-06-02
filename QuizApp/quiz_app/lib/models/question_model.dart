import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';

class QuestionModel {
  final int number;
  final String question;
  final List<String> options;
  final String answer;
  final Image image;
  
  String selectedanswer;


  QuestionModel({
    required this.number,
    required this.question,
    required this.options,
    required this.answer,
    required this.image,
    this.selectedanswer = '',
  });
}

final List<QuestionModel> questions = [
  QuestionModel(
    number: 1,
    question: 'What is the capital of France?',
    options: ['Paris', 'London', 'Berlin', 'Madrid'],
    answer: 'Paris',
    image: Assets.a1.image(),
  ),
  QuestionModel(
    number: 2,
    question: 'Which planet is known as the Red Planet?',
    options: ['Earth', 'Mars', 'Jupiter', 'Venus'],
    answer: 'Mars',
    image: Assets.a2.image(),
  ),
  QuestionModel(
    number: 3,
    question: 'Which animal is known as the King of the Jungle?',
    options: ['Elephant', 'Lion', 'Tiger', 'Giraffe'],
    answer: 'Lion',
    image: Assets.a3.image(),
  ),
  QuestionModel(
    number: 4,
    question: 'Which is the largest ocean on Earth?',
    options: ['Atlantic', 'Indian', 'Pacific', 'Arctic'],
    answer: 'Pacific',
    image: Assets.a4.image(),
  ),
];
