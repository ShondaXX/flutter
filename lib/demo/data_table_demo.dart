import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(//数据表格小部件
              sortColumnIndex: _sortColumnIndex,//排序
              sortAscending: _sortAscending,//正反排序
              onSelectAll: (bool value){//

              },
              columns: [//表格标题
                DataColumn(// 数据列小部件
                  label: Text("Title"),
                  onSort: (int index,bool ascending){//排序方法
                    setState(() {
                      _sortColumnIndex = index;
                     _sortAscending = ascending;
                     posts.sort((a,b){
                       if(!ascending){
                         final c = a;
                         a = b;
                         b = c;
                       }

                       return a.title.length.compareTo(b.title.length);
                     });
                    });
                  }
                ),
                DataColumn(//  
                  label: Text("Author")
                ),
                DataColumn(//  
                  label: Text("Image")
                ),
              ],
              rows: posts.map(
                (post){
                  return DataRow(
                    selected: post.selected,
                    onSelectChanged: (value){
                      setState(() {
                       if(post.selected!=value){
                         post.selected = value;
                       }
                      });
                    },
                    cells: [
                      DataCell(
                        Text("${post.author}")
                      ),
                      DataCell(
                        Text("${post.title}")
                      ),
                      DataCell(
                        Image.network(post.imageUrl)
                      )
                    ]
                  );
                }
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}