import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  State<StatefulWidget> createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;

  void _onTapHandler (int index){
    setState(() {
     _currentIndex = index; 
    });     
  }

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(//底部导航栏小部件
          type: BottomNavigationBarType.fixed,//底部导航类型，当底部导航项目大于3类型会改需要重新设置
          fixedColor: Colors.black,//导航项选中颜色
          currentIndex: _currentIndex,//导航项控制器
          onTap: _onTapHandler,//点击事件 
          items: [
            BottomNavigationBarItem(//底部导航项
              icon: Icon(
                Icons.explore,
              ),
              title: Text("Explore")
            ),
            BottomNavigationBarItem(//底部导航项
              icon: Icon(
                Icons.history,
              ),
              title: Text("History")
            ),
            BottomNavigationBarItem(//底部导航项
              icon: Icon(
                Icons.list,
              ),
              title: Text("List")
            ),
            BottomNavigationBarItem(//底部导航项
              icon: Icon(
                Icons.person,
              ),
              title: Text("My")
            ),
          ],
        );
  }
}