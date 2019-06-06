import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    "Apple",
    "Banana",
    "Lemon",
  ];

  String _action = "Nothing";

  List<String> _selected =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(//自动换行小部件
              spacing: 8.0,//小部件间隔
              runSpacing: 8.0,//行间隔
              children: <Widget>[
                Chip(
                  //小碎片小部件
                  label: Text("Life"),
                ),
                Chip(
                  //小碎片小部件
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("王"),
                  ),
                ),
                Chip(
                  //小碎片小部件
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    //圆形头像小部件
                    backgroundImage: NetworkImage(
                        "http://ww1.sinaimg.cn/large/0065oQSqly1g2pquqlp0nj30n00yiq8u.jpg"),
                    child: Text("思"),
                  ),
                ),
                Chip(
                  //小碎片小部件
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                  avatar: CircleAvatar(
                    //圆形头像小部件
                    backgroundImage: NetworkImage(
                        "http://ww1.sinaimg.cn/large/0065oQSqly1g2pquqlp0nj30n00yiq8u.jpg"),
                    child: Text("婷"),
                  ),
                ),
                Chip(
                  label: Text("City"),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),//删除图标
                  deleteIconColor: Colors.redAccent,//删除图标颜色
                  deleteButtonTooltipMessage: "Remove this tag",//长按提示
                ),
                Divider(//分隔符小部件
                  color: Colors.grey,
                  height: 32.0,
                  indent: 100.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map(
                    (tag){
                      return Chip(
                        label: Text(tag),
                        onDeleted: (){
                          setState(() {
                           _tags.remove(tag);//删除当前 chip
                          });
                        },
                      );
                    }
                  ).toList(),
                ),
                Divider(//分隔符小部件
                  color: Colors.grey,
                  height: 32.0,
                  indent: 100.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text("ActionChip $_action"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map(
                    (tag){
                      return ActionChip(//动作小碎片小部件
                        label: Text(tag),
                        onPressed: (){
                          setState(() {
                           _action = tag; 
                          });
                        },
                      );
                    }
                  ).toList(),
                ),
                Divider(//分隔符小部件
                  color: Colors.grey,
                  height: 32.0,
                  indent: 100.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text("FilterChip ${_selected.toString()}"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map(
                    (tag){
                      return FilterChip(//过滤小碎片小部件
                        label: Text(tag),
                        selected: _selected.contains(tag),
                        onSelected: (value){
                          setState(() {
                           if (_selected.contains(tag)) {
                             _selected.remove(tag);
                           }else{
                            _selected.add(tag);
                            }
                          });
                        },
                      );
                    }
                  ).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
           _tags = [
             "Apple",
             "Banana",
             "Lemons"
           ];
           _selected = [];
          });
        },
      ),
    );
  }
}
