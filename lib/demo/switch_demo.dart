import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(//列表式开关小部件
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                 _switchItemA = value; 
                });
              },
              title: Text("Swtich Item A"),
              subtitle: Text("Description"),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
              activeColor: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(_switchItemA ? 'a' : 'b'),
                // Switch(//开关小部件
                //   value: _switchItemA,
                //   onChanged: (value){
                //     _switchItemA = value;
                //   },
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}