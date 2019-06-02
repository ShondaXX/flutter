import 'package:flutter/material.dart';


class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          //平面按钮小部件
          child: Text("button"),
          onPressed: () {},
          splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,//文字颜色
        ),
        FlatButton.icon(
          //平面按钮小部件
          label: Text("button"),
          icon: Icon(Icons.add),
          onPressed: () {},
          splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,//文字颜色
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              //覆盖主题
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  // shape: BeveledRectangleBorder(
                  //   borderRadius: BorderRadius.circular(5.0)
                  // )
                  shape: StadiumBorder())),
          child: RaisedButton(
            //平面按钮小部件
            child: Text("button"),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0.0,
            // textColor: Theme.of(context).accentColor,//文字颜色
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        RaisedButton.icon(
          //平面按钮小部件
          label: Text("button"),
          icon: Icon(Icons.add),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 0.0,
          // textColor: Theme.of(context).accentColor,//文字颜色
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          //描边按钮小部件
          //平面按钮小部件
          child: Text("button"),
          onPressed: () {},
          splashColor: Colors.grey,
          borderSide: BorderSide(
              //描边样式
              color: Colors.black),
          highlightedBorderColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,//文字颜色
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          //描边小部件
          //平面按钮小部件
          label: Text("button"),
          icon: Icon(Icons.add),
          onPressed: () {},
          splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,//文字颜色
        ),
      ],
    );

    final Widget fixedwidthButtom = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.0,
          child: OutlineButton(
            //描边按钮小部件
            //平面按钮小部件
            child: Text("button"),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(
                //描边样式
                color: Colors.black),
            highlightedBorderColor: Colors.grey,
            // textColor: Theme.of(context).accentColor,//文字颜色
          ),
        )
      ],
    );

    final Widget expandedButtom = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          //
          child: OutlineButton(
            //描边按钮小部件
            //平面按钮小部件
            child: Text("button"),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(
                //描边样式
                color: Colors.black),
            highlightedBorderColor: Colors.grey,
            // textColor: Theme.of(context).accentColor,//文字颜色
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          //
          flex: 2, //
          child: OutlineButton(
            //描边按钮小部件
            //平面按钮小部件
            child: Text("button"),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(
                //描边样式
                color: Colors.black),
            highlightedBorderColor: Colors.grey,
            // textColor: Theme.of(context).accentColor,//文字颜色
          ),
        )
      ],
    );

    final Widget buttomDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
            )
          ),
          child:ButtonBar(//列表按钮
          children: <Widget>[
            OutlineButton(
              //描边按钮小部件
              //平面按钮小部件
              child: Text("button"),
              onPressed: () {},
              splashColor: Colors.grey,
              borderSide: BorderSide(
                  //描边样式
                  color: Colors.black),
              highlightedBorderColor: Colors.grey,
              // textColor: Theme.of(context).accentColor,//文字颜色
            ),
            OutlineButton(
              //描边按钮小部件
              //平面按钮小部件
              child: Text("button"),
              onPressed: () {},
              splashColor: Colors.grey,
              borderSide: BorderSide(
                  //描边样式
                  color: Colors.black),
              highlightedBorderColor: Colors.grey,
              // textColor: Theme.of(context).accentColor,//文字颜色
            ),
          ],
        ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedwidthButtom,
            expandedButtom,
            buttomDemo
          ],
        ),
      ),
    );
  }
}
