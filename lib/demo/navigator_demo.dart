import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//脚手架小部件
      body: Center(//居中小部件
        child: Row(//横排小部件
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(//浮动按钮小部件
              child: Text(//文本小部件
                "王思婷"
              ),
              onPressed: null,
            ),
            FlatButton(//浮动按钮小部件
              child: Text(//文本小部件
                "哈哈"
              ),
              onPressed: (){
                Navigator.pushNamed(context, "/about");
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context){
                //       return Page(title: 'HH',);
                //     }
                //   )
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(//脚手架小部件
      appBar: AppBar(//标题小部件
        title: Text(//文本小部件
          title
          ),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(//底部浮动按钮小部件
        child: Icon(
          Icons.arrow_back
        ),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}