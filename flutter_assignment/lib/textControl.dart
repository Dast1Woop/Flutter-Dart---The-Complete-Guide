import 'package:flutter/material.dart';

import 'contentText.dart';

class TextControl extends StatefulWidget {
  // const TextControl({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TextControlState();
    // throw UnimplementedError();
  }
}

class TextControlState extends State<TextControl> {
  var _content = "content";

  void _btnDidClick() {
    setState(() {
      _content = "content changed1";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContentText(
          _content,
        ),
        RaisedButton(
          onPressed: _btnDidClick,
          child: Text(
            "btn title",
          ),
        ),
      ],
    );
  }
}
