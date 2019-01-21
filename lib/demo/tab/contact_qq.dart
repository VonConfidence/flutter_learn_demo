import "package:flutter/material.dart";
import "./header_tab_demo.dart";

class ContactQQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          ListTile(
            title: Text('新朋友'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(
            color: Colors.black54,
          ),
          ListTile(
            title: Text('创建群聊'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(
            color: Colors.black54,
          ),
          TabBarDetail(),
        ],
      ),
    );
  }
}
