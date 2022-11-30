import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  // const TextControl({ Key? key }) : super(key: key);

  final VoidCallback btnDidClick;
  TextControl(this.btnDidClick);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: btnDidClick,
      child: Text(
        "btn title",
      ),
    );
  }
}
