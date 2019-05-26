import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //边栏抽屉小部件
      child: ListView(
        //列表视图小部件
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(//边栏抽屉头部小部件
          //   child: Text("王思婷"),
          //   decoration: BoxDecoration(//背景小部件
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            //边栏抽屉用户信息小部件
            accountName: Text(
              //文本小部件
              "王思婷",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "xxxxx@163.com",
            ),
            currentAccountPicture: CircleAvatar(
              //头像小部件
              backgroundImage: NetworkImage(
                  "https://thirdqq.qlogo.cn/g?b=sdk&k=7PjKjQl8yKQ9nSdJapCvjA&s=140&t=1558078985"),
            ),
            decoration: BoxDecoration(
                //背景小部件
                color: Colors.yellow[400],
                image: DecorationImage(
                    //背景图片小部件
                    image: NetworkImage(
                        "https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                    fit: BoxFit.cover, //图片填充方式
                    colorFilter: ColorFilter.mode(
                        //滤镜小部件
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text(
              //文本小部件
              "Messages",
              textAlign: TextAlign.right, //文本对齐方式
            ),
            trailing: Icon(Icons.message),
            onTap: () => Navigator.pop(context), //返回上一个页面
          ),
          ListTile(
            title: Text(
              //文本小部件
              "Favorite",
              textAlign: TextAlign.right, //文本对齐方式
            ),
            trailing: Icon(Icons.favorite),
            onTap: () => Navigator.pop(context), //返回上一个页面
          ),
          ListTile(
            title: Text(
              //文本小部件
              "Settings",
              textAlign: TextAlign.right, //文本对齐方式
            ),
            trailing: Icon(Icons.settings),
            onTap: () => Navigator.pop(context), //返回上一个页面
          )
        ],
      ),
    );
  }
}
