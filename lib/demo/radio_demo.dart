import 'package:flutter/material.dart';


class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _handlRadioValueChanged(int value){
    setState(() {
     _radioGroupA = value; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("RadioGroupValue: $_radioGroupA"),
            SizedBox(height: 32.0,),
            RadioListTile(//列表式单选按钮小部件
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handlRadioValueChanged,
              title: Text("Options A"),
              subtitle: Text("Description"),
              selected: _radioGroupA == 0,
              activeColor: Colors.black,
              secondary: Icon(Icons.filter_1),
            ),
            RadioListTile(//列表式单选按钮小部件
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handlRadioValueChanged,
              title: Text("Options B"),
              subtitle: Text("Description"),
              selected: _radioGroupA == 1,
              activeColor: Colors.black,
              secondary: Icon(Icons.filter_2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Radio(//单选按钮小部件
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handlRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
                // Radio(//单选按钮小部件
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handlRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}