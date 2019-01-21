import 'package:flutter/material.dart';

class NavigatorRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigatorRouteDemo(),
    );
  }
}

class NavigatorRouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('Form'),
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          FlatButton(
            child: Text('About'),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
    );
  }
}
