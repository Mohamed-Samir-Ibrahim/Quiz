import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_item_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';
import 'package:quiz_app/widgets/question_item.dart';
import 'package:quiz_app/widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int myTotalScore = 0;
  int resultedScore = questions.length * 10;
  bool showTotalScore = false;
  @override
  Widget build(BuildContext context) {
    showTotalScore = myTotalScore <= resultedScore;
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Center(
        child: !showTotalScore
            ? Column(
                children: [
                  QuestionItem(questionItem: questions[questionIndex]),
                  Column(
                    children: questions[questionIndex].availableAnswers.map((
                      answerMap,
                    ) {
                      return AnswerItem(
                        answerMap: answerMap,
                        questionChangeCallback: () {
                          if (questionIndex + 1 < questions.length) {
                            setState(() {
                              questionIndex += 1;
                            });
                          }
                        },
                      );
                    }).toList(),
                  ),
                ],
              )
            : TotalScorePart(
                myTotalScore: myTotalScore,
                resetQuizOnPressed: () {
                  setState(() {
                    questionIndex = 0;
                    myTotalScore = 0;
                  });
                },
              ),
      ),
    );
  }
}
