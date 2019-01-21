import 'package:flutter/material.dart';
import './post.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  PostDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${post.title}'),
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 400.0,
              ),
              child: Image.network(
                post.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              // 占据所有宽度
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${post.title}',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    '${post.author}',
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Text(
                    '${post.description}',
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
