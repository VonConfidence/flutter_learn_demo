import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '电影海报实例',
      // Scaffold(脚手架) Material library 中提供的一个widget, 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter')),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.7, // 宽:高比 = 长方形
          ),
          children: <Widget>[
            new Image.network(
              'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3460961320,2300172317&fm=173&app=49&f=JPEG?w=499&h=422&s=E746F20C4E6A3315DEA862980300D08E',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3899296323,2427485078&fm=173&app=49&f=JPEG?w=438&h=658&s=0D55834E9EFA119C2575E59A0300C096',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=897711949,814366327&fm=26&gp=0.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4116736146,2231869635&fm=26&gp=0.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=602362627,3858090649&fm=173&app=49&f=JPEG?w=640&h=426&s=5C0A965556330B905521DDAE03004009',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3010615918,71160334&fm=173&app=49&f=JPEG?w=640&h=453&s=FA86E00C48E20E151E9363900300E08F',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
