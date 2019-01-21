import 'package:flutter/material.dart';

/*
main() => runApp(MaterialApp(
      title: 'MediaQuery Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: GridViewExtentDemo(),
    ));

*/

class GridViewExtentDemo extends StatefulWidget {
  final String title = 'GridView extent';
  @override
  State<StatefulWidget> createState() {
    return _GridViewExtentDemoState();
  }
}

List<Container> _buildGridTileList(int count) {
  // final imagesList = [
  //   'https://b-ssl.duitang.com/uploads/item/201303/16/20130316114138_2CSdZ.jpeg',
  //   'https://a-ssl.duitang.com/uploads/item/201405/24/20140524214855_5Y3Jx.thumb.700_0.jpeg',
  //   'https://b-ssl.duitang.com/uploads/item/201405/24/20140524215402_MUArc.thumb.700_0.jpeg',
  //   'https://b-ssl.duitang.com/uploads/item/201411/21/20141121222234_uYirS.thumb.700_0.jpeg',
  //   'https://b-ssl.duitang.com/uploads/item/201406/24/20140624135955_LMsA2.thumb.700_0.jpeg',
  //   'https://b-ssl.duitang.com/uploads/item/201607/14/20160714111403_HTyWm.jpeg',
  // ];
  return new List<Container>.generate(
    // imagesList.length,
    count,
    (int index) => new Container(
          color: Colors.grey,
          child: new Image.asset('images/${index + 1}.jpg'),
        ),
  );
}

Widget buildGrid() {
  return new GridView.extent(
    // 每一个网格的宽度
    maxCrossAxisExtent: 150.0,
    padding: const EdgeInsets.all(4.0),
    // 竖直方向main
    mainAxisSpacing: 4.0,
    // 水平方向
    crossAxisSpacing: 4.0,
    children: _buildGridTileList(14),
  );
}

class _GridViewExtentDemoState extends State<GridViewExtentDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}
