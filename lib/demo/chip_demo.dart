import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Orange', 'Banana', 'Lenmon'];
  String _action = 'Nothing';

  List<String> _selected = [];

  String _singleChoice = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0, // 水平将间距
              runSpacing: 8.0, // 换行间距
              children: <Widget>[
                Chip(
                  label: Text('Chip 1'),
                ),
                Chip(
                  label: Text('Chip bg'),
                  backgroundColor: Colors.purple,
                ),
                Chip(
                  label: Text('Chip Avatar'),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('V'),
                  ),
                ),
                Chip(
                  label: Text('Chip img'),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.jianshu.io/users/upload_avatars/6083454/ef5ee700-812a-4153-9317-9d26808bf01c.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
                  ),
                ),
                Divider(
                  color: Colors.black54,
                  // height: 32.0,
                  // indent: 32.0,
                ),
                Chip(
                  label: Text('待删除'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove Tag',
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.blue,
                ),
                Container(
                  child: Text('ActionChip $_action'),
                  width: double.infinity,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                // FilterChip
                Divider(
                  height: 20.0,
                  color: Colors.blue,
                ),
                Container(
                  child: Text('FilterChip ${_selected.toString()}'),
                  width: double.infinity,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                // ChoiceChip
                Divider(
                  height: 20.0,
                  color: Colors.blue,
                ),
                Container(
                  child: Text('ChoiceChip $_singleChoice'),
                  width: double.infinity,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.black,
                      selected: _singleChoice == tag,
                      onSelected: (value) {
                        setState(() {
                          _singleChoice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['ES', 'Webpack', 'React', 'Node'];
            _selected = [];
            _singleChoice = '';
          });
        },
      ),
    );
  }
}
