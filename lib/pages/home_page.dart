import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_item_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';

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
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.016,
                      left: MediaQuery.of(context).size.width * 0.016,
                    ),
                    child: Text(
                      questions[questionIndex].title,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaler.scale(24),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Congratulations!',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaler.scale(36),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    Text(
                      'Your score is $myTotalScore',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaler.scale(22),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
