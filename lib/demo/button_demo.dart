import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button 1'),
          onPressed: () {},
          // 长按按钮显示该颜色
          splashColor: Colors.grey,
          // 按钮颜色
          textColor: Colors.purple,
        ),
        FlatButton.icon(
          label: Text('Button 1'),
          icon: Icon(
            Icons.add,
            size: 16,
          ),
          onPressed: () {},
          // 长按按钮显示该颜色
          splashColor: Colors.grey,
          // 按钮颜色
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          // 替换应用的主题ThemeData
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // 形状 斜角矩形
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              // 足球场形状
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('Button 0'),
            onPressed: () {},
            // 长按按钮显示该颜色
            splashColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        RaisedButton(
          child: Text('Button 1'),
          onPressed: () {},
          // 长按按钮显示该颜色
          splashColor: Colors.grey,
          // 文字颜色
          textColor: Colors.purple,
          // 按钮颜色
          color: Theme.of(context).accentColor,
          // 文字颜色
          textTheme: ButtonTextTheme.accent,
          // 按钮底层阴影高度
          elevation: 0.0,
        ),
        SizedBox(
          width: 10,
        ),
        RaisedButton.icon(
          label: Text('Button 1'),
          icon: Icon(
            Icons.add,
            size: 16,
          ),
          onPressed: () {},
          // 长按按钮显示该颜色
          splashColor: Colors.grey,
          // 按钮颜色
          textColor: Colors.black,
          // 按钮底层阴影高度
          elevation: 12.0,
        ),
        Image.network(
            'http://y3.ifengimg.com/cmpp/2016/02/29/a657b5934016e27a30f3283df8c3bb56_size344_w600_h400.jpg')
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('Button 0'),
          onPressed: () {},
          // 长按按钮显示该颜色
          splashColor: Colors.grey[100],
          highlightColor: Colors.grey,
          highlightedBorderColor: Colors.black,
          // 描边效果
          borderSide: BorderSide(
            color: Colors.black,
          ),
          // 文字颜色
          textColor: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        OutlineButton.icon(
          label: Text('Button 1'),
          icon: Icon(
            Icons.add,
            size: 16,
          ),
          onPressed: () {},
          // 长按按钮显示该颜色
          splashColor: Colors.grey,
          // 按钮颜色
          textColor: Colors.black,
        ),
        Image.network(
            'http://y3.ifengimg.com/cmpp/2016/02/29/a657b5934016e27a30f3283df8c3bb56_size344_w600_h400.jpg')
      ],
    );
    final Widget fixedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('Button 0'),
            onPressed: () {},
            // 长按按钮显示该颜色
            splashColor: Colors.grey[100],
            highlightColor: Colors.grey,
            highlightedBorderColor: Colors.black,
            // 描边效果
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // 文字颜色
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlineButton.icon(
            label: Text('Button 1'),
            icon: Icon(
              Icons.add,
              size: 16,
            ),
            // 描边效果
            borderSide: BorderSide(
              color: Colors.black,
            ),
            onPressed: () {},
            // 长按按钮显示该颜色
            splashColor: Colors.grey,
            // 按钮颜色
            textColor: Colors.black,
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Column(
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32.0))),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button.0'),
                onPressed: () {},
                // 长按按钮显示该颜色
                splashColor: Colors.grey[100],
                highlightColor: Colors.grey,
                highlightedBorderColor: Colors.black,
                // 描边效果
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                // 文字颜色
                textColor: Colors.black,
              ),
              OutlineButton(
                child: Text('Button.1'),
                onPressed: () {},
                // 长按按钮显示该颜色
                splashColor: Colors.grey[100],
                highlightColor: Colors.grey,
                highlightedBorderColor: Colors.black,
                // 描边效果
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                // 文字颜色
                textColor: Colors.black,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                OutlineButton(
                  child: Text('Button.0'),
                  onPressed: () {},
                  // 长按按钮显示该颜色
                  splashColor: Colors.grey[100],
                  highlightColor: Colors.grey,
                  highlightedBorderColor: Colors.black,
                  // 描边效果
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  // 文字颜色
                  textColor: Colors.black,
                ),
                OutlineButton(
                  child: Text('Button.1'),
                  onPressed: () {},
                  // 长按按钮显示该颜色
                  splashColor: Colors.grey[100],
                  highlightColor: Colors.grey,
                  highlightedBorderColor: Colors.black,
                  // 描边效果
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  // 文字颜色
                  textColor: Colors.black,
                ),
              ],
            )
          ],
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedButtonDemo,
            buttonBarDemo
          ],
        ),
      ),
    );
  }
}
