import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/*
void main() => runApp(ListViewDemo(
      items: new List<String>.generate(1000, (i) => "Item $i"),
    ));
*/

class ListViewContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewDemo2'),
      ),
      body: ListViewDemo2(
        items: new List<String>.generate(1000, (i) => "Item $i"),
      ),
    );
  }
}

class ListViewDemo2 extends StatelessWidget {
  final List<String> items;

  ListViewDemo2({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: new Text('${items[index]}'),
        );
      },
    );
    // body: Container(
    //   height: 200.0,
    //   child: MyList(),
    // ),
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180,
          color: Colors.purpleAccent,
          child: new ListTile(
            leading: Icon(Icons.android),
            title: Text(wordPair.asPascalCase),
          ),
        ),
        Container(
          width: 180,
          color: Colors.lightBlue,
          child: Image.network(
            'http://img3.mukewang.com/szimg/5ac2dfe100014a9005400300.jpg',
          ),
        ),
        Container(
          width: 180,
          color: Colors.green,
          child: Image.network(
            'http://img2.mukewang.com/szimg/5b4bfb7000019d2e10800600.jpg',
          ),
        ),
        Container(
          width: 180,
          color: Colors.yellow,
          child: Image.network(
            'http://img2.mukewang.com/szimg/5a9ca4e80001786305400300.jpg',
          ),
        ),
        Container(
          width: 180,
          color: Colors.red,
          child: Image.network(
            'http://img3.mukewang.com/szimg/5ac2dfe100014a9005400300.jpg',
          ),
        ),
      ],
    );
  }
}
