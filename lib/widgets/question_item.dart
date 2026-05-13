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
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(color: Colors.black),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.008),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.016,
            left: MediaQuery.of(context).size.width * 0.016,
          ),
          child: Text(
            'Answer and get points',
            style: Theme.of(
              context,
            ).textTheme.displayLarge!.copyWith(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
