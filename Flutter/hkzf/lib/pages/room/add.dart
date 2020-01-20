
/**
 * 添加房源组件
 * */ 

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hkzf/pages/room/appliance_icon.dart';
import 'package:hkzf/pages/room/subComponents/fromItem.dart';
import 'package:hkzf/pages/room/subComponents/radioItem.dart';
import 'package:hkzf/pages/room/subComponents/title.dart';
import 'package:hkzf/router/index.dart';
import 'package:hkzf/utils/navigator_util.dart';
import 'package:hkzf/widgets/common_image_picker.dart';
import 'package:hkzf/widgets/common_select_item.dart';

class RoomAddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RoomAddPageState();
  }
}

class RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0; // 租赁方式
  int decorationType = 0; //装修

  int roomType = 0; //户型
  int floor = 0; //楼层
  int oriented = 0; //朝向
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
          CommonSelectItem(
            label: '户型',
            value: roomType,
            onChange: (val) {
              setState(() {
               roomType = val; 
              });
            },
            options: [
              '一室',
              '二室',
              '三室',
              '四室',
            ],
          ),
          CommonSelectItem(
            label: '楼层',
            value: floor,
            onChange: (val) {
              setState(() {
               floor = val; 
              });
            },
            options: [
              '高楼层',
              '中楼层',
              '低楼层',
            ],
          ),
          CommonSelectItem(
            label: '朝向',
            value: oriented,
            onChange: (val) {
              setState(() {
               oriented = val; 
              });
            },
            options: [
              '东',
              '南',
              '西',
              '北京',
            ],
          ),
          RoomAddTitle('房屋图像'),
          CommonImagePicker(onChange:(List<File> files){

          }),
          RoomAddTitle('房屋标题'),
           Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              // controller: titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入标题（例如：整组，小区名 2室 2000元）',
              ),
            ),
          ),
          RoomAddTitle('房屋配置'),
          RoomApplianceIcon(onCange:(val){

          }),
          RoomAddTitle('房屋描述'),
          Container(
            margin: EdgeInsets.only(bottom: 50.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              // controller: descController,
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入房屋描述信息',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
