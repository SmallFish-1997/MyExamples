import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/info/info.dart';
import 'package:hkzf/pages/profile/advertisement.dart';
import 'package:hkzf/pages/profile/childEntrance.dart';
import 'package:hkzf/pages/profile/header.dart';
import 'package:hkzf/router/index.dart';
import 'package:hkzf/utils/navigator_util.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('个人中心'),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                NavigatorUtil.navigatorTo(context, Routers.setting);
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              )
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: <Widget>[
              ProfileHeader(),
              ProfileChildEntrance(),
              Advertisement(),
              InfoComponent(
                showTitle: true,
              )
            ],
          ),
        ));
  }
}
