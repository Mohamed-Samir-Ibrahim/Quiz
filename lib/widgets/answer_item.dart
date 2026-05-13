import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.questionChangeCallback,
  });

  final AnswerItemModel answerMap;
  final VoidCallback questionChangeCallback;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.008,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.016),
          child: Row(
            children: [
              Icon(Icons.add, color: Colors.black, size: 26),
              SizedBox(width: MediaQuery.of(context).size.width * 0.016),
              Text(answerMap.title),
            ],
          ),
        ),
      ),
    );
  }
}
