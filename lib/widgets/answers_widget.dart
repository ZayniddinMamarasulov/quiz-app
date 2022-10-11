import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/option_widget.dart';

import '../models/question_model.dart';

class AnswersWidget extends StatefulWidget {
  QuestionModel questionModel;

  final ValueChanged<bool> onAnswerSelected;

  AnswersWidget({
    Key? key,
    required this.questionModel,
    required this.onAnswerSelected,
  }) : super(key: key);

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OptionWidget(
          option: widget.questionModel.option1.title,
          isSelected: widget.questionModel.option1.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option1.isSelected =
                  !widget.questionModel.option1.isSelected;
            });
            widget.onAnswerSelected(widget.questionModel.trueAnswer ==
                widget.questionModel.option1.isSelected);
          },
        ),
        OptionWidget(
          option: widget.questionModel.option2.title,
          isSelected: widget.questionModel.option2.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option2.isSelected =
                  !widget.questionModel.option2.isSelected;
            });
            widget.onAnswerSelected(widget.questionModel.trueAnswer ==
                widget.questionModel.option2.isSelected);
          },
        ),
        OptionWidget(
          option: widget.questionModel.option3.title,
          isSelected: widget.questionModel.option3.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option3.isSelected =
                  !widget.questionModel.option3.isSelected;
            });
            widget.onAnswerSelected(widget.questionModel.trueAnswer ==
                widget.questionModel.option3.isSelected);
          },
        ),
        OptionWidget(
          option: widget.questionModel.option4.title,
          isSelected: widget.questionModel.option4.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option4.isSelected =
                  !widget.questionModel.option4.isSelected;
            });
            widget.onAnswerSelected(widget.questionModel.trueAnswer ==
                widget.questionModel.option4.isSelected);
          },
        ),
      ],
    );
  }
}
