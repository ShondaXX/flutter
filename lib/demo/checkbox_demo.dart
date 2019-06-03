import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckboxDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(//列表式复选框小部件
              value: _checkboxItemA,
              onChanged: (value){
                setState(() {
                 _checkboxItemA = value; 
                });
              },
              title: Text("Checkbox item A"),//标题
              subtitle: Text("data"),//副标题
              secondary: Icon(Icons.bookmark),//
              selected: _checkboxItemA,
              activeColor: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(//复选框小部件
                //   value: _checkboxItemA,
                //   activeColor: Colors.black,
                //   onChanged: (value){//点击事件
                //     setState(() {
                //       _checkboxItemA = value; 
                //     });
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
