import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
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
              columns: [//表格标题
                DataColumn(// 数据列小部件
                  label: Text("Title")
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