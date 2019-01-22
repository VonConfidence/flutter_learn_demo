import 'package:flutter/material.dart';
import './../movie/list.dart';

class MovieListDemo extends StatefulWidget {
  _MovieListDemoState createState() => _MovieListDemoState();
}

class _MovieListDemoState extends State<MovieListDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('电影列表'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Angelababay'),
                accountEmail: Text('Angelababay@qq.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/5.jpg'),
                ),
                // 美化当前空间
                decoration: BoxDecoration(
                  //背景图片
                  image: DecorationImage(
                    image: AssetImage('images/6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: Text('用户反馈'),
                trailing: Icon(Icons.feedback),
              ),
              ListTile(
                title: Text('系统设置'),
                trailing: Icon(Icons.settings),
              ),
              ListTile(
                title: Text('我要发布'),
                trailing: Icon(Icons.send),
              ),
              //分割线
              Divider(
                color: Colors.yellow,
              ),
              ListTile(
                title: Text('退出/注销'),
                trailing: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ),
        // 底部的tabbar
        bottomNavigationBar: Container(
          height: 50,
          child: TabBar(
            indicatorColor: Colors.black,
            labelStyle: TextStyle(
              height: 0,
              fontSize: 10,
            ),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.movie_filter),
                text: '正在热映',
              ),
              Tab(
                icon: Icon(Icons.movie_creation),
                text: '即将上映',
              ),
              Tab(
                icon: Icon(Icons.hd),
                text: 'TOP 250',
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: TabBarView(
            children: <Widget>[
              MovieList(mt: 'in_theaters'),
              MovieList(mt: 'coming_soon'),
              MovieList(mt: 'top250'),
            ],
          ),
        ),
      ),
    );
  }
}
