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
  void _answerQuestion() {
    print("answer question!!!");
    // if (_questionIndex + 1 < _questionsArr.length) {
    setState(() {
      _questionIndex += 1;
    });
    // }
  }

  final _questionsArr = [
    {
      "question": 'what\'s your favorite color?',
      "answer": ["red", "green", "blue", "white"]
    },
    {
      "question": 'what\'s your favorite movie?',
      "answer": ["活着", "平凡的世界", "阿甘正传"]
    },
  ];

  var _questionIndex = 0;

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
                  : Result(),
        ),
      ),
    );
  }
}
