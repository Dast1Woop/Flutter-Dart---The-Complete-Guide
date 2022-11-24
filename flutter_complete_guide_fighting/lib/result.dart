import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);
  final score;
  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("you did it! Total score:$score"),
    );
  }
}
