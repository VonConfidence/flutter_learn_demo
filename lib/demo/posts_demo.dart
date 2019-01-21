import 'package:flutter/material.dart';
import './../model/post.dart' show posts;

class PostsDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
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
  Widget build(BuildContext ctx) {
    return Scaffold(
      // 设置背景浅灰色
      backgroundColor: Colors.grey[100],
      // 顶部导航栏
      appBar: AppBar(
        title: Text('Confidence'),
        elevation: 4.0,
      ),
      // 主题内容区域: 使用ListView
      body: ListView.builder(
        // 列表的数量
        itemCount: posts.length,
        // 列表渲染每一项
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
