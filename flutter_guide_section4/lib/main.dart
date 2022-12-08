import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_guide_section4/transaction.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  // const App({ Key? key }) : super(key: key);

  final List<Transaction> transactionsArr = [
    Transaction(
      id: "id0",
      title: "title0",
      price: 1,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id1",
      title: "title0",
      price: 2,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id2",
      title: "title0",
      price: 11,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id3",
      title: "title0",
      price: 12,
      date: DateTime.now(),
    ),
  ];

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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //数组解包+匹配语法格式：...(arr).map((e){xx})
            ...(transactionsArr).map((e) {
              return Container(
                child: Card(
                  color: Colors.orange,
                  child: Text(e.id + " " + e.title + " " + '${e.price}'),
                  elevation: 5, //阴影
                ),
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.orange,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
