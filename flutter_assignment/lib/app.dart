// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/contentText.dart';
import 'package:flutter_assignment/textControl.dart';

class App extends StatelessWidget {
  // const App({ Key? key }) : super(key: key);

  final String content;
  final void Function() btnDidClick;
  App(this.content, this.btnDidClick);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContentText(content),
        TextControl(
          btnDidClick,
        )
      ],
    );
  }
}
