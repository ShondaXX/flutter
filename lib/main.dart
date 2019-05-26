import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖 StatelessWidget 方法
  Widget build(BuildContext context) {
    return MaterialApp(
      //Material 风格的小部件
      home: Scaffold(
        //脚手架小部件
        appBar: AppBar(
          //顶部工具栏小部件
          title: Text("hello"), //标题
          elevation: 0.0,//顶部工具栏阴影
        ),
        body: Hello(),
      ),
      theme: ThemeData(//主题颜色小部件
        primarySwatch: Colors.yellow//主要颜色
      ),
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
