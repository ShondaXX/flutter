import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
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
                SnackbarButtom(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackbarButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("open snackbar"),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(//底部提示小部件
            content: Text("data..."),
            action: SnackBarAction(
              label: "ok",
              onPressed: (){},
            ),
          )
        );
      },
    );
  }
}