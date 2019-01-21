import 'package:flutter/material.dart';
import './../model/post.dart' show posts;

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(
            posts[index].imageUrl,
            height: 300,
            width: 400,
            fit: BoxFit.fill,
          ),
          SizedBox(
            // 留白16.0高度
            height: 16.0,
          ),
          Text(
            posts[index].title,
            // 设置成样式主题
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            // 设置成样式主题
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewDemo'),
      ),
      body: ListView.builder(
        // 列表的数量
        itemCount: posts.length,
        // 列表渲染每一项
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
