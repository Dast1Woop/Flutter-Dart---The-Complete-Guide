import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  // const ContentText({ Key? key }) : super(key: key);
  final String content;
  ContentText(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
      ),
    );
  }
}
