import 'package:quiz_app/models/option_model.dart';

class QuestionModel {
  String question;
  OptionModel option1;
  OptionModel option2;
  OptionModel option3;
  OptionModel option4;
  int trueAnswer;

  QuestionModel(
      {required this.question,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.option4,
      this.trueAnswer = 1});

  static final questions = [
    QuestionModel(
      question: "Bu birinchi savol ?",
      option1: OptionModel(title: "savol1 option1"),
      option2: OptionModel(title: "savol1 option1"),
      option3: OptionModel(title: "savol1 option1"),
      option4: OptionModel(title: "savol1 option1"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu 2 savol ?",
      option1: OptionModel(title: "savol2 option1"),
      option2: OptionModel(title: "savol2 option1"),
      option3: OptionModel(title: "savol2 option1"),
      option4: OptionModel(title: "savol2 option1"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu 3 savol ?",
      option1: OptionModel(title: "savol1 option1"),
      option2: OptionModel(title: "savol1 option1"),
      option3: OptionModel(title: "savol1 option1"),
      option4: OptionModel(title: "savol1 option1"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu 4 savol ?",
      option1: OptionModel(title: "savol1 option1"),
      option2: OptionModel(title: "savol1 option1"),
      option3: OptionModel(title: "savol1 option1"),
      option4: OptionModel(title: "savol1 option1"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu 5 savol ?",
      option1: OptionModel(title: "savol1 option1"),
      option2: OptionModel(title: "savol1 option1"),
      option3: OptionModel(title: "savol1 option1"),
      option4: OptionModel(title: "savol1 option1"),
      trueAnswer: 1,
    ),
  ];
}
