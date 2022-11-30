// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/app.dart';

//todo:MyApp extends StatelessWidget, textControl extends StatefulWidget

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const Myapp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _content = "content";

  void _btnDidClick() {
    setState(() {
      _content = "content changed1";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Title",
          ),
        ),
        body: App(_content, _btnDidClick),
      ),
    );
  }
}
