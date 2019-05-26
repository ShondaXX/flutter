import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖 StatelessWidget 方法
  Widget build(BuildContext context) {
    return Center(
      //居中小部件
      child: Text(
        //文字小部件
        'hello world',
        textDirection: TextDirection.ltr, //文字阅读方向
      ),
    );
  }
}
