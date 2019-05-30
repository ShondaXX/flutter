import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewExtentDemo();
  }
}

class GridViewExtentDemo extends StatelessWidget{
    List<Widget> _buildTiles(int length){
    return List.generate(
      length,
      (int index){
        return Container(//盒子小部件
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(//文本小部件
            "Item",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
            ),
          ),
        );
      } 
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(//网格小部件
      maxCrossAxisExtent: 150.0,//在交叉轴的大小
      crossAxisSpacing: 16.0,//网格左右间距
      mainAxisSpacing:  16.0,//网格上下间距
      // scrollDirection: Axis.horizontal,//网格方向
      children: _buildTiles(100)
    );
  }
}


class GridViewCountDemo extends StatelessWidget{
    List<Widget> _buildTiles(int length){
    return List.generate(
      length,
      (int index){
        return Container(//盒子小部件
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(//文本小部件
            "Item",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
            ),
          ),
        );
      } 
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(//网格小部件
      crossAxisCount: 3,//主轴网格数量
      crossAxisSpacing: 16.0,//网格左右间距
      mainAxisSpacing:  16.0,//网格上下间距
      scrollDirection: Axis.horizontal,//网格方向
      children: _buildTiles(100)
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget{  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(//叠加小部件
      children: <Widget>[
        SizedBox.expand(//占满页面的小盒子小部件
          child: Image.network(//请求网络图片小部件
          posts[index].imageUrl,
          fit: BoxFit.cover ,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(//列表滚动页面小部件
       itemCount: posts.length,
       itemBuilder: _pageItemBuilder,
    );
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


