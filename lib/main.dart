import 'package:flutter/material.dart';
import 'package:flutterdemo/demo/form_demo.dart';
import './demo/listView_demo.dart';
import './demo/hello_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //覆盖 StatelessWidget 方法
  Widget build(BuildContext context) {
    return MaterialApp(//Material 风格的小部件
      debugShowCheckedModeBanner: false, //隐藏 debug 条幅
      // home: Home(),
      initialRoute: '/form',//默认路由
      routes: {//路由
        '/': (context) => Home(),
        '/about':(context) => Page(title: "HH",),
        '/form':(context) => FormDemo()
      },
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
      length: 4, //标签数量
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
              ),
              Tab(//标签控制器小部件
                icon: Icon(//图标小部件
                  Icons.view_quilt
                ),
              )
            ],
          ),
        ),
        body: TabBarView(//标签视图
          children: <Widget>[
            ListViewDemo(),
            // Icon(//图标小部件
            //   Icons.local_florist,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            // Icon(//图标小部件
            //   Icons.change_history,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            BasicDemo(),
            LayoutDemo(),
            // Icon(//图标小部件
            //   Icons.directions_bike,
            //   size: 128.0,
            //   color: Colors.black12,
            // )
            SliverDemo()
          ],
        ),
        //ListViewDemo(),
        //Hello(),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}


