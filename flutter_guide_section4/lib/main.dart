import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "title",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                color: Colors.blue,
                child: Text("content1"),
                elevation: 5, //阴影
              ),
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.orange,
            ),
            Card(
              color: Colors.yellow,
              child: Text("content2"),
            ),
          ],
        ),
      ),
    );
  }
}
