import 'package:flutter/material.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/posts_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 不显示顶部的debug按钮
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/about': (context) => PostsDemo(),
        '/form': (context) => FormDemo(title: 'About'),
        '/': (context) => MaterialComponents(),
      },
      title: 'flutter',
      // 应用主题
      theme: ThemeData(
        // 顶部栏的颜色值
        primarySwatch: Colors.yellow,
        // primaryColor: Colors.purple,
        // 主题点击的时候高亮时颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        // accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
      // home: SliverDemo(),
      // home: ViewDemo(),
      // home: TabOneDemo(),
      // home: LayoutDemo(),

      // 不使用home的话 , 可以使用 initialRoute
      // home: NavigatorRouteWidget(),
    );
  }
}
