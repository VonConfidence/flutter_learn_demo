import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  Column buildButtonColumn(IconData icon, String label, BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSelection = Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Widget buttonSection = new Container(
      margin: EdgeInsets.only(top: 30),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL', context),
          buildButtonColumn(Icons.near_me, 'ROUTE', context),
          buildButtonColumn(Icons.share, 'SHARE', context),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      margin: EdgeInsets.only(top: 30),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Layout',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Layout Learn'),
        ),
        body: Container(
            padding: EdgeInsets.all(12.0),
            color: Color.fromARGB(0, 155, 155, 155),
            child: ListView(
              children: <Widget>[
                HeaderImage(),
                titleSelection,
                buttonSection,
                textSection,
              ],
            )),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 400.0,
      height: 240.0,
      color: Colors.lightBlue,
      child: Image.network(
        'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=693517655,4044888911&fm=173&app=25&f=JPEG?w=640&h=959&s=61F2A365868B755D5935AD9A0300C097',
        fit: BoxFit.cover,
        // color: Colors.yellowAccent,
        // colorBlendMode: BlendMode.modulate,
        repeat: ImageRepeat.noRepeat,
      ),
    );
  }
}
