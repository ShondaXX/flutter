import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamDemo"),
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;

  String _data = "...";

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print("create a stream");
    // Stream<String> _streamDemo = Stream.fromFuture(fetchDate());//生成
    // _streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print("Start listening on a stream");
    _streamDemoSubscription = _streamDemo.stream
        .listen(onData, onError: onError, onDone: onDone); //执行

    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone); //执行
    print("Initialize completed");
  }

  void onData(String data) {
    setState(() {
     _data = data; 
    });
    //结果
    print("$data");
  }

  void onDataTwo(String data) {
    //结果
    print("ondatatwo $data");
  }

  void onError(error) {
    //错误
    print("Error: $error");
  }

  void onDone() {
    //执行完成
    print("Done");
  }

  void _pauseStream() {
    //停止
    print("pause subscription");
    _streamDemoSubscription.pause(); //停止
  }

  void _resumeStream() {
    //恢复
    print("resume subscription");
    _streamDemoSubscription.resume(); //恢复
  }

  void _cancelStream() {
    //取消
    print("cancel subscription");
    _streamDemoSubscription.cancel(); //取消
  }

  void _addDataToStream() async {
    print("add data to stream");

    String data = await fetchDate();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchDate() async {
    await Future.delayed(Duration(seconds: 5));
    // throw "some";
    return "hello";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: "3...",
              builder: (context, snapshot){
                return Text(snapshot.data);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Add"),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text("pause"),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text("Resume"),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
