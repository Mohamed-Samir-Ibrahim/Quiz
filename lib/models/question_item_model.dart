import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;

  QuestionItemModel({required this.title, required this.availableAnswers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: 'What is your favourite sport?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Football',
        onPressed: () => debugPrint('Football'),
      ),
      AnswerItemModel(
        title: 'Basketball',
        onPressed: () => debugPrint('Basketball'),
      ),
      AnswerItemModel(
        title: 'Volleyball',
        onPressed: () => debugPrint('Volleyball'),
      ),
      AnswerItemModel(
        title: 'Kickboxing',
        onPressed: () => debugPrint('Kickboxing'),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favourite color?',
    availableAnswers: [
      AnswerItemModel(title: 'Red', onPressed: () => debugPrint('Red')),
      AnswerItemModel(title: 'White', onPressed: () => debugPrint('White')),
      AnswerItemModel(title: 'Blue', onPressed: () => debugPrint('Blue')),
      AnswerItemModel(title: 'Yellow', onPressed: () => debugPrint('Yellow')),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favourite animal?',
    availableAnswers: [
      AnswerItemModel(title: 'Lion', onPressed: () => debugPrint('Lion')),
      AnswerItemModel(title: 'Camel', onPressed: () => debugPrint('Camel')),
      AnswerItemModel(title: 'Tiger', onPressed: () => debugPrint('Tiger')),
      AnswerItemModel(title: 'Cat', onPressed: () => debugPrint('Cat')),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favourite bird?',
    availableAnswers: [
      AnswerItemModel(title: 'Flutter', onPressed: () => debugPrint('Flutter')),
      AnswerItemModel(title: 'Pigeon', onPressed: () => debugPrint('Pigeon')),
      AnswerItemModel(title: 'Owl', onPressed: () => debugPrint('Owl')),
      AnswerItemModel(title: 'Raven', onPressed: () => debugPrint('Raven')),
    ],
  ),
];
