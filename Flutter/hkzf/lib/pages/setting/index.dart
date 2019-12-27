import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('设置'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              RaisedButton(
                child: Text('退出登录',style: TextStyle(color: Colors.red),), 
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
