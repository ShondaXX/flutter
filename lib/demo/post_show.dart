import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            post.imageUrl 
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(post.author)
              ],
            ),
          )
        ],
      ),
    );
  }
}