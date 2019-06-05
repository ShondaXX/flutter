import 'package:flutter/material.dart';


class ExPansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExPansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}


class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  
  bool _isExpanded = false;

  List<ExPansionPanelItem> _expansionPanelItem;

  @override
  void initState() {
    super.initState();
    _expansionPanelItem = <ExPansionPanelItem>[
      ExPansionPanelItem(
        headerText: "Panel A",
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text("data"),
        ),
        isExpanded: false
      ),
            ExPansionPanelItem(
        headerText: "Panel B",
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text("data"),
        ),
        isExpanded: false
      ),
            ExPansionPanelItem(
        headerText: "Panel C",
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text("data"),
        ),
        isExpanded: false
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExpansionPanelList(//面板列表小部件
                  expansionCallback: (int panelIndex, bool isExpanded){
                    setState(() {
                      _expansionPanelItem[panelIndex].isExpanded = !isExpanded; 
                    //  _isExpanded=!isExpanded; 
                    });
                  },
                  children: _expansionPanelItem.map(
                    (ExPansionPanelItem item){
                      return ExpansionPanel(//面板列表项小部件
                        isExpanded: item.isExpanded,
                        body: item.body,
                        headerBuilder: (BuildContext context,bool isExpanded){
                          return Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              item.headerText,
                              style: TextStyle(
                                color: Colors.black
                              ),
                             ),
                          );
                        }
                      );
                    }
                  ).toList(),
                  // children: [
                  //   ExpansionPanel(
                  //     headerBuilder: (BuildContext context,bool isExpanded){
                  //       return Container(
                  //         padding: EdgeInsets.all(16.0),
                  //         child: Text(
                  //           "Pan A",
                  //           style: TextStyle(
                  //             color: Colors.black
                  //           ),
                  //           ),
                  //       );
                  //     },
                  //     body: Container(
                  //       padding: EdgeInsets.all(16.0),
                  //       width: double.infinity,
                  //       child: Text("data"),
                  //     ),
                  //     isExpanded: _isExpanded
                  //   )
                  // ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}