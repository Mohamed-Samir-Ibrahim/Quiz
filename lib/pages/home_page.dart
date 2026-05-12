import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.016,
                left: MediaQuery.of(context).size.width * 0.016,
              ),
              child: Text(
                'What is your favourite hoppy?',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaler.scale(24),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Column(
              children: answerForFirstQuestion.map((answerMap) {
                return AnswerItem(answerMap: answerMap);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
