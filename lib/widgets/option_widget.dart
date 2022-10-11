import 'package:flutter/material.dart';

class OptionWidget extends StatefulWidget {
  final String option;
  bool isSelected;
  VoidCallback onTap;

  OptionWidget({
    Key? key,
    required this.option,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.green : Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.grey.withOpacity(0.5),
            )
          ],
          borderRadius: BorderRadius.circular(24),
        ),
        margin: EdgeInsets.only(top: 12, left: 12, right: 12),
        padding: EdgeInsets.all(24),
        width: double.infinity,
        child: Text(
          widget.option,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
