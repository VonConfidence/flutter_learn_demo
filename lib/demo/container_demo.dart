import 'package:flutter/material.dart'; // 基础的设计样式
import 'package:english_words/english_words.dart';

// 应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget (小部件)
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const content = '''Flutter SDK包括Flutter的引擎、框架、widgets、工具和Dart SDK。
    此示例需要v0.1.4或更高版本.
    VS Code: 右键单击并选择 Format Document. Terminal: 运行 flutter format <filename>.''';

    String content1 = ' Hello Flutter';
    final wordPair = new WordPair.random();
    return Scaffold(
      appBar: AppBar(title: Text('ContainerDemo')),
      // 在Flutter中，大多数东西都是widget，包括对齐(alignment)、填充(padding)和布局(layout)
      body: Center(
        // body的widget树中包含了一个Center widget,
        // Center widget又包含一个 Text 子widget。 Center widget可以将其子widget树对其到屏幕中心。
        child: Container(
          child: Text(
            wordPair.asPascalCase,
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis, // clip切掉 ellipsis省略号 fade 超出部分渐变
            style: TextStyle(
              fontSize: 25.0,
              // color: Color.fromARGB(255, 255, 150, 150),
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.blueGrey,
            ),
          ),
          alignment: Alignment.topLeft,
          width: 500.0,
          height: 400.0,
          // color: Colors.lightBlue, // 背景色
          // padding: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.fromLTRB(10.0, 30, 0.0, 0.0),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.lightBlue,
                Colors.green,
                Colors.purple,
                Colors.red,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
