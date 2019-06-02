import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  final _floatingActionButton = FloatingActionButton(
    //悬浮按钮
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    // backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(//正方形
    //   borderRadius: BorderRadius.circular(30.0)
    // ),
  );

  final _floatingActionButtonExtended = FloatingActionButton.extended(
    //
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text("Add"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //按钮和工具栏叠合一块
      bottomNavigationBar: BottomAppBar(
        //底部工具栏小部件
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(), //圆形缺口
      ),
    );
  }
}
