import 'package:flutter/material.dart';
import 'dart:async';

enum Option { A, B, C }

class SimpleDialogDemo extends StatefulWidget {
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future _openSimpleDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('SimpleTextDialog'),
            children: <Widget>[
              // Text('Welcome To Flutter DialogDemo'),
              SimpleDialogOption(
                child: Text('OPTION A'),
                onPressed: () {
                  // 相当于是关闭对话框
                  Navigator.pop(context, Option.A);
                },
              ),
              SimpleDialogOption(
                child: Text('OPTION B'),
                onPressed: () {
                  // 相当于是关闭对话框
                  Navigator.pop(context, Option.B);
                },
              ),
              SimpleDialogOption(
                child: Text('OPTION C'),
                onPressed: () {
                  // 相当于是关闭对话框
                  Navigator.pop(context, Option.C);
                },
              ),
            ],
          );
        });
    switch (option) {
      case Option.A:
        setState(() {
          _choice = 'A ItemA';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'B ItemB';
        });
        break;
      case Option.C:
        setState(() {
          _choice = 'C ItemC';
        });
        break;
      default:
        setState(() {
          _choice = 'Nothing Default';
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('YOUR CHOICE IS $_choice'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
