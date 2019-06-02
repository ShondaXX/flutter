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
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username,passwrod;

  void submitRegisterForm (){
    registerFormKey.currentState.save();//保存表单内容

    debugPrint('$username : $passwrod');

  }

  @override
  Widget build(BuildContext context) {
    return Form(//表单小部件
      key: registerFormKey,
      child: Column(//竖排小部件
        children: <Widget>[
          TextFormField(//表单输入框小部件
            decoration: InputDecoration(//输入框装饰小部件
              labelText: "Username"
            ),
            onSaved: (value){
              setState(() {
               username = value; 
              });
            },
          ),
          TextFormField(//表单小部件
            obscureText: true,//隐藏输入文字
            decoration: InputDecoration(//输入框装饰小部件
              labelText: "Password"
            ),
            onSaved: (value){
              setState(() {
               passwrod = value; 
              });
            },
          ),
          SizedBox(//小盒子小部件
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(//按钮小部件
              color: Theme.of(context).accentColor,
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
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