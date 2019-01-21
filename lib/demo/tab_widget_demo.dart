import "package:flutter/material.dart";
import './tab/contact_qq.dart';
import './tab/basic_demo.dart';

class TabWidgetDemo extends StatefulWidget {
  TabWidgetDemo({Key key}) : super(key: key);

  @override
  _TabWidgetDemoState createState() => _TabWidgetDemoState();
}

class _TabWidgetDemoState extends State<TabWidgetDemo> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    ContactQQ(),
    // Container(
    //   child: ListView(
    //     children: <Widget>[
    //       Image.asset('image/2.jpg'),
    //       Image.asset('image/3.jpg'),
    //     ],
    //   ),
    // ),
    BasicDemo(),
    Container(
      // color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.orange,
            ),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.only(left: 24.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              // 使用图形边框
              image: DecorationImage(
                // image: NetWorkImage('images/2.jpg'),
                image: AssetImage('images/2.jpg'),
                alignment: Alignment.topCenter,
                // repeat: ImageRepeat.noRepeat,
                // fit控制填充模式
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.indigoAccent[100].withOpacity(0.5),
                    BlendMode.colorBurn),
              ),
              // 还可以使用RadialGradient,LinearGradient 默认方向从左往右
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  // 偏移量
                  offset: Offset(6.0, 7.0),
                  // 颜色
                  color: Color.fromRGBO(16, 20, 180, 1.0),
                  // 模糊程度
                  blurRadius: 1.0,
                  // 阴影扩散程度 负的缩小阴影面积
                  spreadRadius: 6.0,
                ),
              ],
              // 改变盒子的形状
              shape: BoxShape.circle,
              // 颜色
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
                // top: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3.0,
                //   style: BorderStyle.solid,
                // ),
                // bottom: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3.0,
                //   style: BorderStyle.solid,
                // ),
              ),
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
