import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './detail.dart';

Dio dio = Dio();

class MovieList extends StatefulWidget {
  // 电影类型
  final String mt;

  MovieList({Key key, @required this.mt}) : super(key: key);

  _MovieListState createState() => _MovieListState();
}

// 有状态组件 对状态进行管理
class _MovieListState extends State<MovieList> {
  int page = 1;
  // 每一页显示的数量
  int pageSize = 10;
  // 电影数据
  List mlist = [];
  // 总的数量 实现分页
  int total = 0;

  // 控件被创建的时候 执行
  void initState() {
    super.initState();
    _getMovieList();
  }

  _getMovieList() async {
    int offset = (page - 1) * pageSize;
    debugPrint('${widget.mt}-$offset-$pageSize');
    var response = await dio.get(
        'http://www.liulongbin.top:3005/api/v2/movie/${widget.mt}?start=$offset&count=$pageSize');

    // 服务器返回的数据
    var result = response.data;
    setState(() {
      mlist = result['subjects'];
      total = result['total'];
    });
    debugPrint(result.toString());
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    // 每一次循环都拿到当前的m项
    var mItem = mlist[index];
    return GestureDetector(
      onTap: () {
        // 跳转到详情页面
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) {
          return MovieDetail(id: mItem['id'], title: mItem['title']);
        }));
      },
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black12)),
        ),
        child: Row(
          children: <Widget>[
            Image.network(
              mItem['images']['small'],
              width: 130,
              height: 180,
              fit: BoxFit.cover,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('电影名称: ${mItem["title"]}'),
                  Text('上映年份: ${mItem["year"]} 年'),
                  Text('电影类型: ${mItem["genres"].join(",")}'),
                  Text('豆瓣评分: ${mItem["rating"]["average"]} 分'),
                  Text('主要演员: ${mItem["title"]} '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mlist.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
