import 'package:flutter/material.dart';

class PopupButtonDemo extends StatefulWidget {
  _PopupButtonDemoState createState() => _PopupButtonDemoState();
}

class _PopupButtonDemoState extends State<PopupButtonDemo> {
  String _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (value) {
                    debugPrint(value);
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                  itemBuilder: (BuildContext ctx) {
                    return [
                      PopupMenuItem(
                        value: 'Item 1',
                        child: Text('MenuItem 1'),
                      ),
                      PopupMenuItem(
                        value: 'Item 2',
                        child: Text('MenuItem 2'),
                      ),
                      PopupMenuItem(
                        value: 'Item 3',
                        child: Text('MenuItem 3'),
                      ),
                    ];
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
