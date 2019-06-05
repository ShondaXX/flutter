import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  _openAlertDialog(){
    showDialog(
      context: context,
      barrierDismissible: false,//是否可以点击幕布退出
      builder: (BuildContext context){
        return AlertDialog(//提示对话框小部件
          title: Text("Alert"),
          content: Text("Are you sure about this?"),
          actions: <Widget>[
            FlatButton(
              child: Text("Cacel"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text("Yes"),
              onPressed: (){
                Navigator.pop(context);
              },
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
        title: Text("AlertDialogDemo"),
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
                RaisedButton(
                  child: Text("Opention AlertDialog"),
                  onPressed: _openAlertDialog,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}