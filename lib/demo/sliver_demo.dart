import 'package:flutter/material.dart';
import './../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverListDemo(),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // 滚动到头部的时候出现, 往下滚动小时
        SliverAppBar(
          // 将头部bar固定在顶部
          pinned: true,
          // floating: 往下滚动的时候才会出现
          // floating: true,
          // title: Text('SLIVER BAR'),

          // 伸展空间 微信主页小程序那一块
          expandedHeight: 178.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              '你好 Flutter',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            background: Image.asset('images/3.jpg', fit: BoxFit.fill),
          ),
        ),
        // 和GridView 差不多
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(12.0),
                      elevation: 14.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      child: Stack(
                        // 可叠加区域
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Container(
                              child: Image.network(
                                posts[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text('测试位置'),
                          Positioned(
                            // 当前这块区域位于父布局的位置
                            top: 32.0,
                            left: 32.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  posts[index].title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  posts[index].author,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: posts.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SliverSafaPadDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sliver Demo'),
      // ),
      // body: PageViewDemo(),
      body: CustomScrollView(
        slivers: <Widget>[
          // 和GridView 差不多
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // 和GridView 差不多
        SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        // 控制网格视图显示的比例 宽高比
        childAspectRatio: 0.5,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
