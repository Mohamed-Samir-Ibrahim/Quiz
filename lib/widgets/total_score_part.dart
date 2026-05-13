import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  const TotalScorePart({
    super.key,
    required this.myTotalScore,
    required this.resetQuizOnPressed,
  });

  final int myTotalScore;
  final VoidCallback resetQuizOnPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.008),
          Text(
            'Your score is $myTotalScore',
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaler.scale(22),
            ),
          ),
          TextButton(onPressed: resetQuizOnPressed, child: Text('Reset Quiz')),
        ],
      ),
    );
  }
}
