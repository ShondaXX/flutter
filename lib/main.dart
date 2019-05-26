import 'package:flutter/material.dart';

void main(){
  runApp(
    Center(//居中小部件
      child: Text(//文字小部件
        'hello world',
        textDirection: TextDirection.ltr,//文字阅读方向
      ),
    )
  );
}