import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //闭包必须指定输入和输出，输出为空用void，输入在()里指定，为空就不指定
  // void Function() btnDidClick;
  //typedef VoidCallback = void Function()
  VoidCallback btnDidClick;
  String content;

  Answer(this.btnDidClick, this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green[100],
        textColor: Colors.black,
        child: Text(content),
        onPressed: btnDidClick, //传递的是闭包变量，不能带 ()
      ),
    );
  }
}
