import 'package:flutter/material.dart';
import 'dart:async';

enum Action { Ok, Cancel }

class ButtonSheetDemo extends StatefulWidget {
  _ButtonSheetDemoState createState() => _ButtonSheetDemoState();
}

class _ButtonSheetDemoState extends State<ButtonSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  String _choice = '';

  _openButtomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16.0,
              ),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text(
                  'Fix you - ColdPlay',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModalButtomSheet() async {
    final choice = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Option A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                ),
              ],
            ),
          );
        });

    setState(() {
      _choice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('ButtonSheetDemo'),
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
                RaisedButton(
                  child: Text('ButtomSheet'),
                  onPressed: _openButtomSheet,
                ),
                RaisedButton(
                  child: Text('ModalSheet $_choice'),
                  onPressed: _openModalButtomSheet,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
