import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FavoriteWordsDemo extends StatefulWidget {
  @override
  createState() => new FavoriteWordsDemoState();
}

class FavoriteWordsDemoState extends State<FavoriteWordsDemo> {
  // 单词数据数组
  final _suggestions = <WordPair>[];
  // 字体样式
  final _biggerFont = const TextStyle(fontSize: 18.0);

  // 用户存储的数据
  final _saved = new Set<WordPair>();

  //  导航跳转页
  void _pushSaved() {
    // 路由push
    Navigator.of(context).push(
      // 新创建一个路由
      new MaterialPageRoute(
        // 返回路由新页面组件内容
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          // ListView的内容
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          // 脚手架: bar标题, 以及内容
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildRow(WordPair pair, index) {
    // 当前项 是否已经保存
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        '$index : ${pair.asPascalCase}',
        style: _biggerFont,
      ),
      // 尾随一个图标
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      // 点击当前项目的时候
      onTap: () {
        setState(() {
          // 如果当前项已经存在 从集合中移除
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
        // 在偶数行，该函数会为单词对添加一个ListTile row.
        // 在奇数行，该行书湖添加一个分割线widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。
        itemBuilder: (context, i) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) return new Divider();

          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
          final index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _suggestions.length) {
            // ...接着再生成10个单词对，然后添加到建议列表
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index], index);
        });
  }
}
