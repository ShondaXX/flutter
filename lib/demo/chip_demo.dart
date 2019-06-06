import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(//小碎片小部件
                  label: Text("Life"),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Chip(//小碎片小部件
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("婷"),
                  ),
                ),
                
                Chip(//小碎片小部件
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(//圆形头像小部件
                    backgroundImage: NetworkImage(
                      "http://ww1.sinaimg.cn/large/0065oQSqly1g2pquqlp0nj30n00yiq8u.jpg"
                    ),
                    child: Text("婷"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}