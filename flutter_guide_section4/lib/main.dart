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
      price: 19.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id1",
      title: "title1",
      price: 200.66,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id2",
      title: "title2222",
      price: 11.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id3333",
      title: "title333333333333333333333333333",
      price: 2.22,
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
            //数组解包(此处解包的是toList()返回的widget数组)+匹配语法格式：...(arr).map((e){xx})
            ...((transactionsArr).map((e) {
              return Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        e.price.toString(),
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(12),
                    ),
                    Column(
                      children: [
                        Text(e.title),
                        Text(e.date.toString()),
                      ],
                    ),
                  ],
                ),
                width: double.infinity,
                alignment: Alignment.center,
                // color: Colors.orange,
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
