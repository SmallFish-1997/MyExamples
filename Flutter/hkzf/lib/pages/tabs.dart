import 'package:flutter/material.dart';
import 'package:hkzf/pages/advisory/index.dart';
import 'package:hkzf/pages/home/hkzf_page.dart';
import 'package:hkzf/pages/profile/index.dart';
import 'package:hkzf/pages/search/index.dart';
import 'package:hkzf/widgets/page_content.dart';
List<Widget> tabViewList = [
  HkzfPage(),
  SearchPage(),
  AdvisoryPage(),
  ProfilePage(),
];
List<BottomNavigationBarItem> barListItems = [
  BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
  BottomNavigationBarItem(title: Text('搜索'), icon: Icon(Icons.search)),
  BottomNavigationBarItem(title: Text('咨询'), icon: Icon(Icons.info)),
  BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.account_circle)),
];

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState();
  }
}

class TabsState extends State<Tabs> {
  int tabCurrencyIndex = 0;
  void _onTapEvent(int index){
    setState(() {
     tabCurrencyIndex  = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabViewList[tabCurrencyIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: barListItems, //tab列表
        type: BottomNavigationBarType.fixed, //固定定位
        currentIndex: tabCurrencyIndex, //当前index下标
        selectedItemColor: Colors.deepOrange, // active color
        onTap: _onTapEvent, //监听tab切换-return 当前index
      ),
    );
  }
}
