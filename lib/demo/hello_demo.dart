import 'package:flutter/material.dart';

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