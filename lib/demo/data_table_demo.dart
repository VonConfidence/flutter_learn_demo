import 'package:flutter/material.dart';
import './../model/post.dart';

class DataTableDemo extends StatefulWidget {
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              // 升序排列
              sortAscending: _sortAscending,
              // 控制全选的动作
              onSelectAll: (bool value) {
                // 参数表示全选的动作
              },
              columns: [
                DataColumn(
                  label: Container(
                    width: 25.0,
                    child: Text('Title'),
                  ),
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = index;
                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Container(
                    width: 60,
                    child: Text('Author'),
                  ),
                ),
                DataColumn(
                  label: Container(
                    // width: 200,
                    child: Text('Image'),
                  ),
                ),
              ],
              rows: posts.map((Post item) {
                return DataRow(
                  // 该行是否被选中
                  selected: item.selected,
                  // 该行选中的值是否发生了改变 true ?? flase
                  onSelectChanged: (bool value) {
                    setState(() {
                      if (item.selected != value) {
                        item.selected = value;
                      }
                    });
                  },
                  cells: [
                    // showEditIcon: true, placeholder: true
                    DataCell(
                      Text(item.title),
                    ),
                    DataCell(Text(item.author)),
                    DataCell(Image.network(item.imageUrl)),
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          // 复原操作
          setState(() {});
        },
      ),
    );
  }
}
