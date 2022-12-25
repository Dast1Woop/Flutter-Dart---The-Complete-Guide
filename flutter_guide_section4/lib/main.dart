import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_guide_section4/transaction.dart';
import 'package:intl/intl.dart';

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
      title: "title34444333333333333333333s3333333444443",
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Text("Chart"),
              elevation: 5,
              color: Colors.blue,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "amount"),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Add transaction"),
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
            //数组解包(此处解包的是toList()返回的widget数组)+匹配语法格式：...(arr).map((e){xx})
            ...((transactionsArr).map((e) {
              return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "\$${e.price}",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
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
                      width: 82,
                    ),
                    Container(
                      // width: double.infinity,//如何设置才能保证Container水平撑满到整个可见区域？
                      // margin: EdgeInsets.all(28),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            child: Text(
                              e.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                              ),
                            ),
                            height: 36,
                          ),
                          Text(
                            DateFormat("yyyy-MM-dd HH:mm:ss").format(e.date),
                            // e.date.toString(),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      // color: Colors.black12,//color、decoration不能同时设置
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(6),
                    ),
                  ],
                ),
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.all(4),
                // color: Colors.orange,
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
