import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  String questionTitle;
  int index;

  QuestionWidget({
    Key? key,
    required this.questionTitle,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 64),
          Text(
            "Question - ${index}",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xff6066D0),
            ),
          ),
          SizedBox(height: 12),
          Text(
            questionTitle,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
