import 'package:flutter/material.dart';
import './../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedRowCount = 0;

  @override
  DataRow getRow(int index) {
    final post = _posts[index];
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(post.imageUrl)),
    ]);
  }

  // 按照title的字符长度进行排序
  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }

  @override
  int get rowCount => _posts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedRowCount;
}

class PaginatedDataTableDemo extends StatefulWidget {
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  final PostDataSource _postsDataSource = PostDataSource();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('POST'),
              source: _postsDataSource,
              sortColumnIndex: _sortColumnIndex,
              // 升序排列
              sortAscending: _sortAscending,
              // 控制全选的动作
              onSelectAll: (bool value) {
                // 参数表示全选的动作
              },
              rowsPerPage: 5,
              columns: [
                DataColumn(
                  label: Container(
                    width: 25.0,
                    child: Text('Title'),
                  ),
                  onSort: (int index, bool ascending) {
                    _postsDataSource._sort((post) => post.title, ascending);
                    setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = index;
                      /*
                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                      */
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
              // rows: posts.map((Post item) {
              //   return DataRow(
              //     // 该行是否被选中
              //     selected: item.selected,
              //     // 该行选中的值是否发生了改变 true ?? flase
              //     onSelectChanged: (bool value) {
              //       setState(() {
              //         if (item.selected != value) {
              //           item.selected = value;
              //         }
              //       });
              //     },
              //     cells: [
              //       // showEditIcon: true, placeholder: true
              //       DataCell(
              //         Text(item.title),
              //       ),
              //       DataCell(Text(item.author)),
              //       DataCell(Image.network(item.imageUrl)),
              //     ],
              //   );
              // }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
