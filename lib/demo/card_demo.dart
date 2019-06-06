import 'package:flutter/material.dart';
import '../model/post.dart';
class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map(
            (post){
              return Card(
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: ClipRRect(//卡片圆角小部件
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0)
                        ),
                        child: Image.network(
                        post.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      )
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post.imageUrl),
                      ),
                      title: Text(post.title),
                      subtitle: Text(post.author),
                    ),
                  ],
                ),
              );
            }
          ).toList()
        ),
      ),
    );
  }
}