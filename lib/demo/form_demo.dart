import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(//主题小部件
        data: ThemeData(
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo()
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();//删除
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textEditingController.text = "hi";
    textEditingController.addListener(//监听文本变化
      (){
        debugPrint('${textEditingController.text}');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(//输入框小部件
    controller: textEditingController,
    // onChanged: (value){//输入事件
    //   debugPrint(value);
    // },
    onSubmitted: (value){//确认事件
      debugPrint(value);
    },
      decoration: InputDecoration(//输入框装饰小部件
        icon: Icon(Icons.subject),
        labelText: "Text",//标题
        hintText: "ll",//提示
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}