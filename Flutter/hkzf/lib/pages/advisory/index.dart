// 咨询页面

import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/info/info.dart';
import 'package:hkzf/widgets/commonSearch.dart';

class AdvisoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AdvisoryPageState();
  }
}

class AdvisoryPageState extends State<AdvisoryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: CommonSearch(),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            InfoComponent(),
            InfoComponent(),
            InfoComponent(),
            InfoComponent(),
          ],
        ));
  }
}
