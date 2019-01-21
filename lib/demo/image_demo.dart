import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Scaffold(
      appBar: AppBar(title: Text('Flutter')),
      body: Center(
        child: Container(
          child: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546426948825&di=41e924d5cd12dbd96880cfad6e88401a&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fn%2Fsinacn%2F20170111%2F3643-fxzqnip0675632.jpg%2Fw540slw.jpg',
            // scale: 1.5,
            // fill 充满容器
            // fit: BoxFit.fill,
            // fit: BoxFit.cover,
            // fit: BoxFit.contain,
            // fit: BoxFit.fitWidth,
            // fit: BoxFit.fitHeight,
            color: Colors.yellowAccent,
            colorBlendMode: BlendMode.modulate,
            repeat: ImageRepeat.noRepeat,
          ),
          width: 600.0,
          height: 400.0,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
