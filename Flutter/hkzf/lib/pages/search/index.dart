import 'package:flutter/material.dart';
import 'package:hkzf/pages/search/data.dart';
import 'package:hkzf/widgets/commonSearch.dart';
import 'package:hkzf/widgets/room_list_item.dart';

class SearchPage extends StatefulWidget {
  final List<RoomListItemData> searchList;

  const SearchPage({Key key, this.searchList = defaultSearchList})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchPageState();
  }
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: CommonSearch(),
        backgroundColor: Colors.white,

        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(child: Text('Filter Bar'),height: 50.0,),
              Expanded(
                child: ListView(
                    children: widget.searchList
                        .map((item) => RoomListItem(item))
                        .toList()),
              )
            ],
          ),
        ));
  }
}
