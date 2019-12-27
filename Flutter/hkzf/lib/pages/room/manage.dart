import 'package:flutter/material.dart';
import 'package:hkzf/router/index.dart';
import 'package:hkzf/utils/navigator_util.dart';
import 'package:hkzf/widgets/commonFloatingActionButton.dart';
import 'package:hkzf/widgets/room_list_item.dart';
import 'package:hkzf/pages/search/data.dart';

class RoomManagePage extends StatelessWidget {
  static const tabs = ['空置', '已租'];
  final List<RoomListItemData> searchList;

  const RoomManagePage({Key key, this.searchList=defaultSearchList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,//居中浮动按钮-默认靠左
        floatingActionButton: CommonFloatingActionButton('发布房源',(){
          NavigatorUtil.navigatorTo(context, Routers.roomAdd);
        }),
        appBar: AppBar(
          title: Text('房屋管理'),
          bottom: TabBar(
              tabs: tabs
                  .map((item) => Tab(
                        child: Text(item),
                      ))
                  .toList()),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                children:
                    searchList.map((item) => RoomListItem(item)).toList()),
            ListView(
                children:
                    searchList.map((item) => RoomListItem(item)).toList()),
          ],
        ),
      ),
    );
  }
}
