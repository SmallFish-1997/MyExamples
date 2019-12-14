import 'package:flutter/material.dart';
import 'package:hkzf/utils/navigator_util.dart';
// 入参参数类型定义
class IndexNavigatorItems {
  final String title;
  final String imageUri;
  final Function(BuildContext context) onTap;
  IndexNavigatorItems(this.title, this.imageUri, this.onTap);
}

List<IndexNavigatorItems> navigatorItemList = [
  IndexNavigatorItems('整租', 'static/images/home_index_navigator_total.png',
      (BuildContext context) {
    // Navigator.of(context).pushNamed('/');
    NavigatorUtil.navigatorTo(context,'/');

  }),
  IndexNavigatorItems('合租', 'static/images/home_index_navigator_share.png',
      (BuildContext context) {
    // Navigator.of(context).pushNamed('/login');
    NavigatorUtil.navigatorTo(context,'/login');
  }),
  IndexNavigatorItems('地图找房', 'static/images/home_index_navigator_map.png',
      (BuildContext context) {
    // Navigator.of(context).pushNamed('/register');
    NavigatorUtil.navigatorTo(context,'/register');

  }),
  IndexNavigatorItems('去出租', 'static/images/home_index_navigator_rent.png',
      (BuildContext context) {
    // Navigator.of(context).pushNamed('/room/test');
    NavigatorUtil.navigatorTo(context,'/room/test');

  }),
];
