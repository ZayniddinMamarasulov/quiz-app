import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  Map<int, bool> userResult;

  ResultPage({Key? key, required this.userResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Your result is"),
          ),
          SizedBox(height: 64),
          ListView.separated(
            shrinkWrap: true,
            itemCount: userResult.length,
            itemBuilder: (context, index) {
              return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Question ${index + 1}",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 32),
                    userResult[index]!
                        ? const Icon(
                            Icons.check_box,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.clear,
                            color: Colors.red,
                          )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
          )
        ],
      ),
    );
  }
}
