import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(//盒子小部件
      // color: Colors.grey[100],
      decoration: BoxDecoration(//背景小部件
        image: DecorationImage(//背景图片小部件
          image: NetworkImage("https://thirdqq.qlogo.cn/g?b=sdk&k=7PjKjQl8yKQ9nSdJapCvjA&s=140&t=1558078985"),
          alignment: Alignment.topCenter,//对齐方式
          repeat: ImageRepeat.repeatY,//
          // fit: BoxFit.fitWidth//填充方式
          colorFilter: ColorFilter.mode(//滤镜小部件
            Colors.indigoAccent[100].withOpacity(0.5),//颜色
            BlendMode.hardLight//混合模式
            )
        )
      ),
      child: Row(
        //行小部件
        mainAxisAlignment: MainAxisAlignment.center, //主轴对齐
        children: <Widget>[
          Container(
            //盒子小部件
            child: Icon(
              //图标小部件
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 54, 255, 1.0),//背景颜色
            padding: EdgeInsets.all(16.0), //内边距
            margin: EdgeInsets.all(8.0), //外边距
            width: 90.0, //宽度
            height: 90.0, //高度
            decoration: BoxDecoration(
              //背景小部件
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid),
              //Border(//边框小部件
              // top: BorderSide(//边小部件
              //   color: Colors.indigoAccent[100],
              //   width: 3.0,
              //   style: BorderStyle.solid
              // )
              //),
              // borderRadius: BorderRadius.only(//圆角小部件
              //   topLeft: Radius.circular(64.0)
              // ),
              //BorderRadius.circular(16.0),//圆角小部件
              boxShadow: [
                BoxShadow(
                    //阴影小部件
                    offset: Offset(
                        //坐标小部件
                        6.0,
                        7.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0), //阴影颜色
                    blurRadius: 25.0, //模糊程度
                    spreadRadius: -9.0 //阴影扩散程度
                    )
              ],
              shape: BoxShape.circle, //盒子形状小部件
              // gradient: RadialGradient(//镜像渐变小部件
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0)
              //   ]
              // ),
              gradient: LinearGradient(//线性渐变小部件
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter,//渐变开始位置
                end: Alignment.bottomCenter,//渐变结束位置
              ),
              
            ),
          )
        ],
      ),
    );
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
