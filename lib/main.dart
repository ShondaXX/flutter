import 'package:flutter/material.dart';
import './model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖 StatelessWidget 方法
  Widget build(BuildContext context) {
    return MaterialApp(
      //Material 风格的小部件
      home: Home(),
      theme: ThemeData(
          //主题颜色小部件
          primarySwatch: Colors.yellow //主要颜色
          ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(//盒子小部件
      color: Colors.white,
      margin: EdgeInsets.all(8.0),//外边距
      child: Column(//列小部件
        children: <Widget>[
          Image.network(posts[index].imageUrl),//加载网络图片
          SizedBox(//小盒子小部件
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,//文字主题
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,//文字主题
          ),
          SizedBox(//小盒子小部件
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],//背景颜色
      //脚手架小部件
      appBar: AppBar(
        //顶部工具栏小部件
        title: Text("hello"), //标题
        elevation: 0.0, //顶部工具栏阴影
      ),
      body: ListView.builder(//列表视图小部件
        itemCount: posts.length,//列表数量
        itemBuilder: _listItemBuilder,//列表视图项目
      ),
      //Hello()
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //居中小部件
      child: Text(
        //文字小部件
        'hello world',
        textDirection: TextDirection.ltr, //文字阅读方向
        style: TextStyle(
            //文字样式小部件
            fontSize: 40.0, //字体太小
            fontWeight: FontWeight.bold, //文字粗细
            color: Colors.black87 //文字颜色
            ),
      ),
    );
  }
}
