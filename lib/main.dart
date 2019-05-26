import 'package:flutter/material.dart';
import './demo/listView_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖 StatelessWidget 方法
  Widget build(BuildContext context) {
    return MaterialApp(
      //Material 风格的小部件
      debugShowCheckedModeBanner: false, //隐藏 debug 条幅
      home: Home(),
      theme: ThemeData(
          //主题颜色小部件
          primarySwatch: Colors.yellow //主要颜色
          ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//脚手架小部件
      backgroundColor: Colors.grey[100], //背景颜色
      appBar: AppBar(//顶部工具栏小部件
        leading: IconButton(//图标按钮小部件
          icon: Icon(//图标小部件
            Icons.menu
          ),
          tooltip: "Navigration",//长按显示  
          onPressed: ()=> debugPrint("navigration"),//点击事件
        ),
        actions: <Widget>[
          IconButton(//图标按钮小部件
            icon: Icon(//图标小部件
              Icons.search
            ),
            tooltip: "Search",//长按显示
            onPressed: () => debugPrint("search"),
          )
        ],
        title: Text("hello"), //标题
        elevation: 0.0, //顶部工具栏阴影
      ),
      body: ListViewDemo(),
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
