import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_fighting/answer.dart';
import 'package:flutter_complete_guide_fighting/question_text.dart';
import 'package:flutter_complete_guide_fighting/quiz.dart';
import 'package:flutter_complete_guide_fighting/result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion(int score) {
    // if (_questionIndex + 1 < _questionsArr.length) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print("answer question!!! total score: $_totalScore");
    // }
  }

  final _questionsArr = [
    {
      "question": 'what\'s your favorite color?',
      "answer": [
        {"content": "red", "score": 5},
        {"content": "green", "score": 3},
        {"content": "blue", "score": 4},
        {"content": "white", "score": 1}
      ]
    },
    {
      "question": 'what\'s your favorite movie?',
      "answer": [
        {"content": "活着", "score": 10},
        {"content": "平凡的世界", "score": 20},
        {"content": "阿甘正传", "score": 15}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child:

            ///ctrl+space:显示可用参数; opt+shift+f:格式化文件
            Scaffold(
          appBar: AppBar(
            title: Text("Title"),
          ),
          body:
              //此处不能用if，但是可以用三目运算符！！！
              // if (_questionIndex < _questionsArr.length) {
              // Text("hi1")
              // }else{
              //   Text("hi")
              // }
              _questionIndex < _questionsArr.length
                  ? Quiz(
                      questionsArr: _questionsArr,
                      questionIndex: _questionIndex,
                      answerQuestion: _answerQuestion,
                    )
                  : Result(_totalScore),
        ),
      ),
    );
  }
}
