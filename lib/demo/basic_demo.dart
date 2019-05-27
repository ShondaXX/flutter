import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichTextDemo();
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      //多样式文本小部件
      text: TextSpan(
          //小段文本小部件
          text: "Hello",
          style: TextStyle(
              //
              color: Colors.deepPurpleAccent, //文字颜色
              fontStyle: FontStyle.italic, //字体
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
                text: "world",
                style: TextStyle(fontSize: 17.0, color: Colors.grey))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _TextStyle = TextStyle(
    //文本样式小部件
    fontSize: 16.0,
  );

  final String _author = "死啦死啦";
  final String _title = "我的团长, 我的团";

  @override
  Widget build(BuildContext context) {
    return Text(
      //文本小部件
      "《 $_title 》 —— $_author 此狗昔日沦落为奴中之婢，今日得势如帝国列强，咬了对街爱新觉罗氏，西门朱氏，左邻蒋氏，连右舍老孟家的小猪崽子的左蹄髈也几被重伤不治…",
      textAlign: TextAlign.left, //文本对齐方式
      style: _TextStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
