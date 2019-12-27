import 'package:flutter/material.dart';
import 'package:hkzf/pages/room/subComponents/fromItem.dart';
import 'package:hkzf/pages/room/subComponents/radioItem.dart';
import 'package:hkzf/pages/room/subComponents/title.dart';
import 'package:hkzf/router/index.dart';
import 'package:hkzf/utils/navigator_util.dart';

class RoomAddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RoomAddPageState();
  }
}

class RoomAddPageState extends State<RoomAddPage> {
  int rentType  = 0;
  int decorationType  = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('添加房源'),
      ),
      body: ListView(
        children: <Widget>[
          RoomAddTitle('房源信息'),
          RoomAddFromItem(
            label: '校区',
            contentBuilder: (context) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  NavigatorUtil.navigatorTo(context, '/search');
                },
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('请选择小区',
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                    ],
                  ),
                ),
              );
            },
          ),
          RoomAddFromItem(
            label: '租金',
            hintText: '请输入租金',
            suffixText: '元/月',
          ),
          RoomAddFromItem(
            label: '大小',
            hintText: '请输入房屋大小',
            suffixText: '平方米',
          ),
          RoomRadioItem(
            label: '租赁方式',
            options: ['合租', '整租'],
            currency: rentType,
            onChange: (index) {
              setState(() {
               rentType = index; 
              });
            },
          ),
            RoomRadioItem(
              label: '装修',
              options: ['精装', '简装'],
              currency: decorationType,
              onChange: (index) {
                setState(() {
                  decorationType = index;
                });
              }),
          RoomAddTitle('房屋头像'),
          RoomAddTitle('房屋标题'),
        ],
      ),
    );
  }
}
