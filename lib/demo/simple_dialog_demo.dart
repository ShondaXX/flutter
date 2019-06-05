import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  _openSimpleDialog(){
    showDialog(//显示对话框小部件
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(//对话框小部件
            title: Text("showDialog"),
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(34.0),
                child: Text("王思婷"),
              )
            ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialogDemo"),
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
                
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
