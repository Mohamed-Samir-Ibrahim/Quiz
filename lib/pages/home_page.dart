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
  int questionIndex = 0, myTotalScore = 0;
  int answerChosen = -1;
  int resultedScore = questions.length * 10;
  bool showTotalScore = false;
  @override
  Widget build(BuildContext context) {
    showTotalScore = myTotalScore >= resultedScore;
    return Scaffold(
      body: SafeArea(
        child: !showTotalScore
            ? Padding(
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.width * 0.016,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionItem(questionItem: questions[questionIndex]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    Column(
                      children: List.generate(
                        questions[questionIndex].availableAnswers.length,
                        (index) => AnswerItem(
                          answerMap:
                              questions[questionIndex].availableAnswers[index],
                          isAnswerChosen: answerChosen == index,
                          questionChangeCallback: () {
                            setState(() {
                              answerChosen = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.016,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.080,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.black,
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            if (questionIndex + 1 < questions.length) {
                              setState(() {
                                questionIndex += 1;
                              });
                              setState(() {
                                myTotalScore += 10;
                                answerChosen = -1;
                              });
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
