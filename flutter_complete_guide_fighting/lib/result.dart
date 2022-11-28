import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);
  final int score;
  final VoidCallback resetQuizHandler;

  Result(this.score, this.resetQuizHandler);

  String get content {
    String text;
    if (score < 16) {
      text = "you did it! small score:$score";
    } else {
      text = "you did it! big score:$score";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            content,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("reset quiz"),
            onPressed: resetQuizHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
