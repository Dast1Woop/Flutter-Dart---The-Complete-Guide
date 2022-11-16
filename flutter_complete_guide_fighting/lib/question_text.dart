import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String content;

  QuestionText(this.content);

  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}
