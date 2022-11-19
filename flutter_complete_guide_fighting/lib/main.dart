import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_fighting/answer.dart';
import 'package:flutter_complete_guide_fighting/question_text.dart';

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
    setState(() {
      _questionIndex += 1;
    });

    print("answer question!!!");
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
          body: Column(
            children: [
              QuestionText(
                _questionsArr[_questionIndex]["question"] as String,
              ),

              //不能使用局部变量，因为此处接收的是 Widget
              // var _answerArr = _questionsArr[_questionIndex]["answer"] as List<String>

              ...(_questionsArr[_questionIndex]["answer"] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
