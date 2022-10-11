import 'package:flutter/material.dart';
import 'package:quiz_app/question_model.dart';
import 'package:quiz_app/screens/result_page.dart';
import 'package:quiz_app/widgets/answers_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int currentQuestionIndex = 0;

  String buttonText = "Next";

  Map<int, bool> userResult = {
    0: false,
    1: false,
    2: false,
    3: false,
    4: false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Column(
        children: [
          // Progress Widget
          // Timer widget
          QuestionWidget(
            questionTitle:
                QuestionModel.questions[currentQuestionIndex].question,
            index: currentQuestionIndex + 1,
          ),
          AnswersWidget(
            onAnswerSelected: (isTrue) {
              userResult[currentQuestionIndex] = isTrue;
            },
            questionModel: QuestionModel.questions[currentQuestionIndex],
          ),
          const SizedBox(height: 32),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (buttonText == "Finish") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          userResult: userResult,
                        ),
                      ),
                    );
                  }
                  if (currentQuestionIndex !=
                      QuestionModel.questions.length - 1) {
                    currentQuestionIndex++;
                  }
                  if (currentQuestionIndex ==
                      QuestionModel.questions.length - 1) {
                    buttonText = "Finish";
                  }
                });
              },
              child: Text(buttonText))
        ],
      ),
    );
  }
}
