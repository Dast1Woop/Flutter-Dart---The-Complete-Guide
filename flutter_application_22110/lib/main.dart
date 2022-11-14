import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hi1234"),
        ),
        body: Text("This is Question!456"),
      ),
    );
  }
}
