import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WST"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "FloatingActionBtton",
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: "Btton",
            page: ButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
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
            FlatButtonDemo
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
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
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  final _floatingActionButton = FloatingActionButton(
    //悬浮按钮
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    // backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(//正方形
    //   borderRadius: BorderRadius.circular(30.0)
    // ),
  );

  final _floatingActionButtonExtended = FloatingActionButton.extended(
    //
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text("Add"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //按钮和工具栏叠合一块
      bottomNavigationBar: BottomAppBar(
        //底部工具栏小部件
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(), //圆形缺口
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return page;
        }));
      },
    );
  }
}
