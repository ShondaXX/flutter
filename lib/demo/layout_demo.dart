import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //横排小部件
        mainAxisAlignment: MainAxisAlignment.center, //主轴
        children: <Widget>[
          ConstrainedBox(//限制盒子小部件
            child: Container(
              constraints: BoxConstraints(//限制小部件
                minHeight: 200.0,
                maxWidth: 200.0
              ),
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
          // AspectRatioDemo(),
          // StatckDemo()
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //宽高比小部件
      aspectRatio: 3.0 / 2.0, //比例
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StatckDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //叠加小部件
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        SizedBox(
          //小盒子小部件
          width: 200.0,
          height: 300.0,
          child: Container(
            //背景小部件
            alignment: Alignment(1.0, -1.0), //对齐位置
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
                gradient: RadialGradient(//镜像渐变小部件
                    colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0)
                ])),
            child: Icon(
              //图标小部件
              Icons.ac_unit,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
        SizedBox(
          child: IconBadge(
            Icons.access_time,
            size: 64.0,
          ),
        ),
        Positioned(
          //定位小部件
          right: 20.0,
          top: 20.0,
          child: Icon(
            Icons.accessibility_new,
            color: Colors.white,
            size: 32.0,
          ),
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      //盒子小部件
      child: Icon(
        //图标小部件
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
