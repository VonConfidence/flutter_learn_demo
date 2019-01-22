import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final String id;
  final String title;
  MovieDetail({Key key, @required this.id, @required this.title}) : super();
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    final id = widget.id;
    final title = widget.title;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Text('电影id:$id'),
    );
  }
}

/**
  with AutomaticKeepAliveClientMixin {
    @override
    bool get wantKeepAlive => true;
  }
 */
