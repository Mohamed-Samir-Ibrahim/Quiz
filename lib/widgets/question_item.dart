import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.questionItem});

  final QuestionItemModel questionItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.016,
            left: MediaQuery.of(context).size.width * 0.016,
          ),
          child: Text(
            questionItem.title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaler.scale(24),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
