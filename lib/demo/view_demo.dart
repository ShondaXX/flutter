import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageViewDemo();
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //页面视图小部件
      // pageSnapping: false,//是否自动滑动
      // reverse: true,//页面视图倒置
      // scrollDirection: Axis.vertical,//页面滑动方向
      onPageChanged: (currentPage) {
        //页面变换视图事件
        debugPrint("Page: $currentPage");
      },
      controller: PageController(
        //控制页面视图显示小部件
        initialPage: 1, //默认显示页面
        keepPage: false, //是否记录页面滚动页面
        viewportFraction: 0.8, //页面大小
      ),
      children: <Widget>[
        Container(
          //盒子小部件
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0), //对齐
          child: Text(
            //文本小部件
            "ONE",
            style: TextStyle(
                //文本样式
                fontSize: 32.0,
                color: Colors.white),
          ),
        ),
        Container(
          //盒子小部件
          color: Colors.blue[900],
          alignment: Alignment(0.0, 0.0), //对齐
          child: Text(
            //文本小部件
            "TWO",
            style: TextStyle(
                //文本样式
                fontSize: 32.0,
                color: Colors.white),
          ),
        ),
        Container(
          //盒子小部件
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0), //对齐
          child: Text(
            //文本小部件
            "THREE",
            style: TextStyle(
                //文本样式
                fontSize: 32.0,
                color: Colors.white),
          ),
        )
      ],
    );
  }
}
