import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/info/info.dart';
import 'package:hkzf/pages/home/navigator_list.dart';
import 'package:hkzf/pages/home/recommoned/recommoned.dart';
import 'package:hkzf/widgets/commonSearch.dart';
import 'package:hkzf/widgets/commonSwiper.dart';
class HkzfPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HkzfPageState();
  }
}
class HkzfPageState extends State<HkzfPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CommonSearch(showLocation: true),
        backgroundColor: Colors.white,
      ),
      body:Container(child:ListView(
          children: <Widget>[
            CommonSwiper(),
            NavigatorList(),
            RecommonedComponent(),
            InfoComponent(showTitle: true,)
          ],
        ),decoration: BoxDecoration(color: Color(0x08000000)),)
    );
  }
}