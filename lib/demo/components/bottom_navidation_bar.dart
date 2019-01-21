import "package:flutter/material.dart";
// import './tab_one.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentActiveIndex = 0;

  void _onNavigationItemClickHandler(int clickIndex) {
    setState(() {
      _currentActiveIndex = clickIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: BottomNavigationBar(
        // 底部导航栏超出四个会变空白, 需要适配
        type: BottomNavigationBarType.fixed,
        // 底部导航栏激活状态为黑色
        fixedColor: Colors.black,
        // 底部激活的索引
        currentIndex: _currentActiveIndex,
        // 点击底部的回调
        onTap: _onNavigationItemClickHandler,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('history'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }
}
