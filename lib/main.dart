import 'package:flutter/material.dart';
import './demo/listView_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖 StatelessWidget 方法
  Widget build(BuildContext context) {
    return MaterialApp(//Material 风格的小部件
      debugShowCheckedModeBanner: false, //隐藏 debug 条幅
      home: Home(),
      theme: ThemeData(//主题颜色小部件
          primarySwatch: Colors.yellow, //主要颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//高亮颜色
          splashColor: Colors.white70,//水波纹颜色
        ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(//标签小部件
      length: 3, //标签数量
      child: Scaffold(
        //脚手架小部件
        backgroundColor: Colors.grey[100], //背景颜色
        appBar: AppBar(
          //顶部工具栏小部件
          // leading: IconButton(
          //   //图标按钮小部件
          //   icon: Icon(//图标小部件
          //       Icons.menu),
          //   tooltip: "Navigration", //长按显示
          //   onPressed: () => debugPrint("navigration"), //点击事件
          // ),
          actions: <Widget>[
            IconButton(//图标按钮小部件
              icon: Icon(//图标小部件
                  Icons.search),
              tooltip: "Search", //长按显示
              onPressed: () => debugPrint("search"),
            )
          ],
          title: Text("hello"), //标题
          elevation: 0.0, //顶部工具栏阴影
          bottom: TabBar(//标签栏
            unselectedLabelColor: Colors.black38,//未被选中标签颜色
            indicatorColor: Colors.black54,//选中标签下方线条颜色
            indicatorSize: TabBarIndicatorSize.label,//选中标签下方线条长度
            indicatorWeight: 1.0,//选中标签下方线条粗细
            indicatorPadding: EdgeInsets.all(0.0),//选中标签下方线条的内边距
            tabs: <Widget>[
              Tab(//标签控制器小部件
                icon: Icon(//图标小部件
                  Icons.local_florist
                ),
              ),
              Tab(//标签控制器小部件
                icon: Icon(//图标小部件
                  Icons.change_history
                ),
              ),
              Tab(//标签控制器小部件
                icon: Icon(//图标小部件
                  Icons.directions_bike
                ),
              )
            ],
          ),
        ),
        body: TabBarView(//标签视图
          children: <Widget>[
            Icon(//图标小部件
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(//图标小部件
              Icons.change_history,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(//图标小部件
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            )
          ],
        ),
        //ListViewDemo(),
        //Hello(),
        drawer: Drawer(//边栏抽屉小部件
          child: ListView(//列表视图小部件
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(//边栏抽屉头部小部件
              //   child: Text("王思婷"),
              //   decoration: BoxDecoration(//背景小部件
              //     color: Colors.grey[100],
              //   ),
              // ),
              UserAccountsDrawerHeader(//边栏抽屉用户信息小部件
                accountName: Text(//文本小部件
                  "王思婷",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                accountEmail: Text(
                  "xxxxx@163.com",
                ),
                currentAccountPicture: CircleAvatar(//头像小部件
                  backgroundImage: NetworkImage("https://thirdqq.qlogo.cn/g?b=sdk&k=7PjKjQl8yKQ9nSdJapCvjA&s=140&t=1558078985"),
                ),
                decoration: BoxDecoration(//背景小部件
                  color: Colors.yellow[400],
                  image: DecorationImage(//背景图片小部件
                    image: NetworkImage("https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                    fit: BoxFit.cover,//图片填充方式
                    colorFilter: ColorFilter.mode(//滤镜小部件
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight
                     )
                  )
                ),
              ),
              ListTile(
                title: Text(//文本小部件
                  "Messages",
                  textAlign: TextAlign.right,//文本对齐方式
                ),
                trailing: Icon(
                  Icons.message
                ),
                onTap: () => Navigator.pop(context),//返回上一个页面
              ),
              ListTile(
                title: Text(//文本小部件
                  "Favorite",
                  textAlign: TextAlign.right,//文本对齐方式
                ),
                trailing: Icon(
                  Icons.favorite
                ),
                onTap: () => Navigator.pop(context),//返回上一个页面
              ),
              ListTile(
                title: Text(//文本小部件
                  "Settings",
                  textAlign: TextAlign.right,//文本对齐方式
                ),
                trailing: Icon(
                  Icons.settings
                ),
                onTap: () => Navigator.pop(context),//返回上一个页面
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //居中小部件
      child: Text(
        //文字小部件
        'hello world',
        textDirection: TextDirection.ltr, //文字阅读方向
        style: TextStyle(
            //文字样式小部件
            fontSize: 40.0, //字体太小
            fontWeight: FontWeight.bold, //文字粗细
            color: Colors.black87 //文字颜色
            ),
      ),
    );
  }
}
