import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton"),
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
                Text(_currentMenuItem),
                PopupMenuButton(//弹出式菜单按钮小部件
                  onSelected: (value){
                    print(value);
                    setState(() {
                     _currentMenuItem = value; 
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(//菜单项小部件
                      value:"home",
                      child: Text("Home"),
                    ),
                    PopupMenuItem(//菜单项小部件
                      value:"Discover",
                      child: Text("Discover"),
                    ),
                    PopupMenuItem(//菜单项小部件
                      value:"Community",
                      child: Text("Community"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}