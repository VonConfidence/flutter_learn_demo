import 'package:flutter/material.dart';
import './../model/post.dart';

class GridViewPostsDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Demo'),
      ),
      // body: PageViewDemo(),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
        itemBuilder: _gridItemBuilder,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 使用 SliverGridDelegateWithMaxCrossAxisExtent时, 使用 maxCrossAxisExtent
          // 设置交叉轴项目
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          // 控制网格宽高比
          // childAspectRatio: 0.5,
        ),
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        // 表示child在container中的位置
        alignment: Alignment(0, 0),
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // 在主轴上的最大宽度
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        // 表示child在container中的位置
        alignment: Alignment(0, 0),
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // count 表示在主轴上的网格的数量
      crossAxisCount: 3,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: _buildTiles(100),
      // 水平方向滚动
      // scrollDirection: Axis.horizontal,
    );
  }
}

class PageViewBuildDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].title,
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: PageController(
          // 初始显示
          initialPage: 1,
          keepPage: false,
          // 默认为1.0 占据整个视口
          viewportFraction: 0.85,
        ),
        // 滑动的回调函数
        onPageChanged: (currentPage) {
          debugPrint('Hello $currentPage');
        },
        // 设置成为false 可以滑动到任何位置
        // pageSnapping: false,
        // 倒置数组中的元素位置, 第一个编程最后一个
        reverse: true,
        // 控制视图的滚动方向
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.brown[400],
            alignment: Alignment(0, 0),
            child: Text(
              'One',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            color: Colors.blue[400],
            alignment: Alignment(0, 0),
            child: Text(
              'Two',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            color: Colors.blueGrey[900],
            alignment: Alignment(0, 0),
            child: Text(
              'Three',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
