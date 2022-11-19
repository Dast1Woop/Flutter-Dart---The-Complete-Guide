import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String content;

  QuestionText(this.content);

  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      width: double.infinity, //会自动适配为整个设备的物理宽度
      margin: EdgeInsets.all(20), //从里到外：padding、border、margin
      child: Text(
        content,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
