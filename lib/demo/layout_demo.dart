import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(//横排小部件
        children: <Widget>[
          IconBadge(
            Icons.poll
          ),
          IconBadge(
            Icons.polymer
          ),
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