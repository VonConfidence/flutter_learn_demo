import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StackDemoState();
  }
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const Alignment(0.5, 0.5),
      children: [
        new CircleAvatar(
          backgroundImage: new AssetImage('images/2.jpg'),
          radius: 200.0,
        ),
        new Container(
          // 背景阴影
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),
          child: new Text(
            'Angelababy',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    // ...
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Hello Flutter'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            stack,
          ],
        ),
      ),
    );
  }
}
