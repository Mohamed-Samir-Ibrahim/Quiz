import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem(
      {super.key, required this.answerMap, required this.questionChangeCallback});

  final AnswerItemModel answerMap;
  final VoidCallback questionChangeCallback;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.008,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.040,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            answerMap.onPressed();
            questionChangeCallback();
          },
          child: Text(answerMap.title),
        ),
      ),
    );
  }
}
