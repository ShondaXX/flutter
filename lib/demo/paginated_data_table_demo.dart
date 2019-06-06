import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;

  int _selectedCount = 0;

  @override
  int get rowCount => _posts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];

    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text("${post.author}")),
      DataCell(Text("${post.title}")),
      DataCell(Image.network(post.imageUrl))
    ]);
  }

  void _sort(getField(post),bool ascending){
    _posts.sort((a,b){
      if(!ascending){
        final c = a;
        a = b;
        b = c;
      }

      final aValue = getField(a);
      final bValue = getField(b);

      return Comparable.compare(aValue, bValue)
    });
    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PaginatedDataTableDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              //分页数据表格小部件
              header: Text("posts"),
              rowsPerPage: 5,
              source: _postsDataSource,
              sortColumnIndex: _sortColumnIndex, //排序
              sortAscending: _sortAscending, //正反排序
              onSelectAll: (bool value) {
                //
              },
              columns: [
                //表格标题
                DataColumn(
                    // 数据列小部件
                    label: Text("Title"),
                    onSort: (int columnIndex, bool ascending) {
                      //排序方法
                      setState(() {
                        _postsDataSource._sort((post)=> post.title.leng, ascending);

                        _sortColumnIndex = columnIndex;
                        _sortAscending = ascending;


                      });
                    }),
                DataColumn(
                    //
                    label: Text("Author")),
                DataColumn(
                    //
                    label: Text("Image")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
