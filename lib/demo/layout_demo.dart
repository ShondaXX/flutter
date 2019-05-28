import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(//横排小部件
        mainAxisAlignment: MainAxisAlignment.center,//主轴
        children: <Widget>[
          SizedBox(//小盒子小部件
            width: 200.0,
            height: 300.0,
            child: Container(//背景小部件
              alignment: Alignment(1.0, -1.0),//对齐位置
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(//图标小部件
                Icons.ac_unit,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge(this.icon,{
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context){
    return Container(//盒子小部件
      child: Icon(//图标小部件
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