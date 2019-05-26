import 'package:flutter/material.dart';
import '../model/post.dart';


class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      //盒子小部件
      color: Colors.white,
      margin: EdgeInsets.all(8.0), //外边距
      child: Column(
        //列小部件
        children: <Widget>[
          Image.network(posts[index].imageUrl), //加载网络图片
          SizedBox(
            //小盒子小部件
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title, //文字主题
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead, //文字主题
          ),
          SizedBox(
            //小盒子小部件
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //列表视图小部件
      itemCount: posts.length, //列表数量
      itemBuilder: _listItemBuilder, //列表视图项目
    );
  }
}