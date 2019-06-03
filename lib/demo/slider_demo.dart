import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_sliderItemA.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(//滑动小部件
                  value: _sliderItemA,
                  onChanged: (value){
                    setState(() {
                     _sliderItemA = value; 
                    });
                  },
                  max: 10,
                  min: 0,
                  activeColor: Theme.of(context).accentColor,//
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),//
                  divisions: 10,
                  label: "${_sliderItemA.toInt()}",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}