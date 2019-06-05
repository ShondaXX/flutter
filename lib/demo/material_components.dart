import 'package:flutter/material.dart';
import 'package:flutterdemo/demo/datetime_demo.dart';
import './buttom_demo.dart';
import './floating_action_button_demo.dart';
import './popup_menu_button_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './simple_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './alert_dialog_demo.dart';
import './snack_bar_demo.dart';
import './expansion_panel_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WST"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "ExpansionPanelDemo",
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: "SnackBarDemo",
            page: SnackBarDemo(),
          ),
          ListItem(
            title: "AlertDialogDemo  提示对话框",
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: "BottomSheetDemo  底部滑动",
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: "SimpleDialogDemo   对话框",
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: "DateTime  时间",
            page: DateTimeDemo(),
          ),
          ListItem(
            title: "Slider  滑块",
            page: SliderDemo(),
          ),
          ListItem(
            title: "Switch   开关",
            page: SwitchDemo(),
          ),
          ListItem(
            title: "Radio  单选按钮",
            page: RadioDemo(),
          ),
          ListItem(
            title: "Checkbox  复选按钮",
            page: CheckboxDemo(),
          ),
          ListItem(
            title: "PopupMenuButton  菜单按钮",
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: "FloatingActionBtton  浮动按钮",
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: "Btton  按钮",
            page: ButtonDemo(),
          ),
        ],
      ),
    );
  }
}


class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return page;
        }));
      },
    );
  }
}
