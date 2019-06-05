import 'package:flutter/material.dart';
import 'dart:async';

enum Option {
  A, B, C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = "Nothing";

  Future _openSimpleDialog() async {
    final option = await showDialog(//显示对话框小部件
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(//对话框小部件
            title: Text("showDialog"),
            children: <Widget>[
              SimpleDialogOption(//对话框选项小部件
                child: Text("Option A"),
                onPressed: (){
                  Navigator.pop(context,Option.A);
                },
              ),
              SimpleDialogOption(//对话框选项小部件
                child: Text("Option C"),
                onPressed: (){
                  Navigator.pop(context,Option.B);
                },
              ),
              SimpleDialogOption(//对话框选项小部件
                child: Text("Option C"),
                onPressed: (){
                  Navigator.pop(context,Option.C);
                },
              ),
            ],
        );
      }
    );

    switch (option) {
      case Option.A:
        setState(() {
         _choice = "A"; 
        });
        break;
      case Option.B:
        setState(() {
         _choice = "B"; 
        });
        break;
      case Option.C:
        setState(() {
         _choice = "C"; 
        });
        break;
      default:
    }

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
            Text(_choice),
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
