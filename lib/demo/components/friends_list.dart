import "package:flutter/material.dart";

class FriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.chevron_right),
            title: Text('特别关心'),
            trailing: Text(
              '0/0',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
