import 'package:flutter/material.dart';
import './../demo/components/header_drawer.dart';
import './../demo/components/bottom_navidation_bar.dart';
// import 'model/tab_one.dart';

class TabBarDemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 不显示顶部的debug按钮
      debugShowCheckedModeBanner: false,
      title: 'TabBar',
      // 应用主题
      theme: ThemeData(
        // 顶部栏的颜色值
        // primarySwatch: Colors.yellow,
        primaryColor: Colors.purple,
        // 主题点击的时候高亮时颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      home: TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List = [
      // TabDemo1(),
    ];
    return DefaultTabController(
      // 表示有4个tab
      length: 4,
      child: Scaffold(
        // 设置背景浅灰色
        backgroundColor: Colors.grey[100],
        // 顶部导航栏
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('Navigation Button is Pressed'),
          // ),
          title: Text('微信'),
          // 顶部右侧文字区域的图标以及行为
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search Button is Pressed'),
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              tooltip: 'Search',
              onPressed: () => debugPrint('Setting Button is Pressed'),
            ),
          ],
          // 顶部阴影部分(海拔 提高)
          elevation: 4.0,
          // 设置顶部tab
          bottom: TabBar(
            // 未选中的颜色变浅一些
            unselectedLabelColor: Colors.black38,
            // 指示器颜色
            indicatorColor: Colors.black54,
            // 指示器长度设置与标签长度一致
            indicatorSize: TabBarIndicatorSize.label,
            // 厚度设置
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.comment),
              ),
              Tab(
                icon: Icon(Icons.contact_phone),
              ),
              Tab(
                icon: Icon(Icons.details),
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
              ),
            ],
          ),
        ),
        // 主题内容区域: 使用ListView
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.comment,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.contact_phone,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.details,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.contact_mail,
              size: 128.0,
              color: Colors.black12,
            ),
          ],
        ),
        // 左侧drawer 通过向左滑动展示出来 endDrawer 从右侧子暗示
        drawer: HeaderDrawer(),
        // 底部导航栏tab页面
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
