/**
 * 房屋配置字体图标组件
 * */
import 'package:flutter/material.dart';
import 'package:hkzf/utils/config.dart';
import 'package:hkzf/widgets/common_check_button.dart';

class RoomApplianceItem {
  final String title;
  final int iconPoint; // 对应iconfont.svg文件unicode编码&#xe900
  final bool isChecked;
  const RoomApplianceItem(this.title, this.iconPoint, this.isChecked);
}

// 房屋配置Icon字体图标列表
const List<RoomApplianceItem> _dataList = [
  RoomApplianceItem('衣柜', 0xe918, false),
  RoomApplianceItem('洗衣机', 0xe917, false),
  RoomApplianceItem('空调', 0xe90d, false),
  RoomApplianceItem('天然气', 0xe90f, false),
  RoomApplianceItem('冰箱', 0xe907, false),
  RoomApplianceItem('暖气', 0xe910, false),
  RoomApplianceItem('电视', 0xe908, false),
  RoomApplianceItem('热水器', 0xe912, false),
  RoomApplianceItem('宽带', 0xe90e, false),
  RoomApplianceItem('沙发', 0xe913, false),
];

class RoomApplianceIcon extends StatefulWidget {
  final ValueChanged<RoomApplianceItem> onCange;
  const RoomApplianceIcon({Key key, this.onCange}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RoomApplianceIconState();
  }
}

class RoomApplianceIconState extends State<RoomApplianceIcon> {
  List<RoomApplianceItem> list = _dataList;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Wrap(
        children: list
            .map((item) => GestureDetector(
                  onTap: () {
                    setState(() {
                      // 将isChecked取反，更新状态
                      list = list.map((innerItem) => innerItem == item
                          ? RoomApplianceItem(
                              item.title, item.iconPoint, !item.isChecked)
                          : innerItem).toList();
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          IconData(item.iconPoint,
                              fontFamily: Config.CommonIcon),
                          size: 40.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(item.title),
                        ),
                        CommonCheckButton(item.isChecked),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
