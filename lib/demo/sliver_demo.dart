import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        //滚动视图小部件
        slivers: <Widget>[
          SliverAppBar(//滚动视图标题小部件
            // title: Text("HELLO"),
            // // pinned: true,//固定滚动视图标题小部件
            // floating: true,//向上拉显示标题
            expandedHeight:178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "data",
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,//字间距
                  fontWeight: FontWeight.w400
                ),
              ),
              background: Image.network(
                posts[0].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            //安全区小部件
            sliver: SliverPadding(
              //滚动视图内边距小部件
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      //列表视图小部件
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            //内边距小部件
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
                borderRadius: BorderRadius.circular(12.0),
                elevation: 14.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 9 / 16,
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 32.0,
                      left: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            posts[index].author,
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      //网格视图小部件
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
