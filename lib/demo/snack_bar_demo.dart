import 'package:flutter/material.dart';
import 'dart:async';

enum Action { Ok, Cancel }

class SnackBarDemo extends StatefulWidget {
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SnackBarButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open SnackBar'),
      onPressed: () {
        // snackbar 过一段事件会自动消失的组件
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Processing...'),
          // duration: Duration,
          action: SnackBarAction(
            label: 'OK',
            onPressed: () {},
          ),
        ));
      },
    );
  }
}
