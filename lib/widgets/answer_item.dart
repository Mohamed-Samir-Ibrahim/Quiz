import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.questionChangeCallback,
    required this.isAnswerChosen,
  });

  final AnswerItemModel answerMap;
  final VoidCallback questionChangeCallback;
  final bool isAnswerChosen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.016),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.080,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            answerMap.onPressed();
            questionChangeCallback();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: isAnswerChosen ? Colors.green : Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width * 0.016,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: isAnswerChosen ? Colors.white : Colors.black,
                    size: 26,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.016),
                  Text(
                    answerMap.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isAnswerChosen ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
