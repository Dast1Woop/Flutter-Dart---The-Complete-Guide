import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      questionIndex = 1;
    });

    print("answer question!!!");
  }

  var questionsArr = [
    'what is your favorite color?',
    'what is your favorite movie?',
    'what is your favorite car?',
  ];

  var questionIndex = 0;

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
              Text(
                questionsArr[questionIndex],
              ),
              RaisedButton(
                child: Text("answer 1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("answer 2"),
                onPressed: () {
                  setState(() {
                    questionIndex = 2;
                  });

                  print("answer 2 clicked");
                },
              ),
              RaisedButton(
                child: Text("answer 3"),
                onPressed: () {
                  print("answer3 clicked!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
