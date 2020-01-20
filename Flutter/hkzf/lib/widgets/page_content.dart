import 'package:flutter/material.dart';
import 'package:hkzf/router/index.dart';

class PageContent extends StatelessWidget{
  final String name;

  const PageContent({Key key, this.name}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    
      appBar: AppBar(title: Text('$name'),),
      body:ListView(
        children: <Widget>[
          FlatButton(child:Text('跳转首页'),onPressed: ()=>{
            Navigator.pushNamed(context, Routers.home)
          },),
          FlatButton(child:Text('跳转登录页面'),onPressed: ()=>{
            Navigator.pushNamed(context, Routers.login)
          },),
          FlatButton(child:Text('跳转404页面'),onPressed: ()=>{
            Navigator.pushNamed(context, "/aaaa")
          },),
          FlatButton(child:Text('跳转Room详情页面'),onPressed: ()=>{
            Navigator.pushNamed(context, "/room/123456")
          },)
        ],
      )
    );
  }
}