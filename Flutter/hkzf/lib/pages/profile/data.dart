import 'package:flutter/material.dart';
import 'package:hkzf/utils/navigator_util.dart';

class ChildEntranceItem {
  final String imageUri;
  final String title;
  final Function onTapHandle;

  ChildEntranceItem(this.imageUri, this.title, this.onTapHandle);
}

final List<ChildEntranceItem> childEntranceList = [
  ChildEntranceItem('static/images/home_profile_record.png', '看房记录', null),
  ChildEntranceItem('static/images/home_profile_order.png', '我的订单', null),
  ChildEntranceItem('static/images/home_profile_favor.png', '我的收藏', null),
  ChildEntranceItem('static/images/home_profile_id.png', '身份认证', null),
  ChildEntranceItem('static/images/home_profile_message.png', '联系我们', null),
  ChildEntranceItem('static/images/home_profile_contract.png', '电子合同', null),
  ChildEntranceItem('static/images/home_profile_house.png', '房屋管理', (context) {
    bool isLogin = true; //todo:
    if (isLogin) {
      NavigatorUtil.navigatorTo(context, '/roomManage');
      return;
    }
      NavigatorUtil.navigatorTo(context, '/login');
  }),
  ChildEntranceItem('static/images/home_profile_wallet.png', '钱包', null),
];
