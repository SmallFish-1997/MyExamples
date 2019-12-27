import 'package:flutter/material.dart';
class NotFoundPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(title: Text('404页面'),),
      body:Center(child:Text('该页面不存在！'))
    );
  }
}