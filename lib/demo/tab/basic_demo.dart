import 'package:flutter/material.dart';
import './../../model/post.dart' show posts;
import './../../model/post_detail.dart';

class PostListDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
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
          // 不设置left等属性的话, 默认是0
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              // 点击的时候出现的键膜效果
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  debugPrint('taped');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => PostDetail(post: posts[index])),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return ListView.builder(
      // 列表的数量
      itemCount: posts.length,
      // 列表渲染每一项
      itemBuilder: _listItemBuilder,
    );
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: PostListDemo(),
    );
  }
}
