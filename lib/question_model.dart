class QuestionModel {
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
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
      option1: "savol1 option1",
      option2: "savol1 option2",
      option3: "savol1 option3",
      option4: "savol1 option4",
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu Ikkinchi savol ?",
      option1: "savol2 option1",
      option2: "savol2 option2",
      option3: "savol2 option3",
      option4: "savol2 option4",
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu Uchinchi savol ?",
      option1: "savol3 option1",
      option2: "savol3 option2",
      option3: "savol3 option3",
      option4: "savol3 option4",
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu 4 savol ?",
      option1: "savol4 option1",
      option2: "savol4 option2",
      option3: "savol4 option3",
      option4: "savol4 option4",
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Bu 5 savol ?",
      option1: "savol5 option1",
      option2: "savol5 option2",
      option3: "savol5 option3",
      option4: "savol5 option4",
      trueAnswer: 1,
    ),
  ];
}
