/**
 * 房屋详情组件
 * */
import 'package:flutter/material.dart';
import 'package:hkzf/pages/room/detail_data.dart';
import 'package:share/share.dart';

class RoomDetailPage extends StatefulWidget {
  final String roomId;
  final RoomDetailData data;
  const RoomDetailPage({Key key, this.roomId, this.data}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RoomDetailPageState();
  }
}

class RoomDetailPageState extends State<RoomDetailPage> {
  // 组件初始化生命周期
  @override
  void initState() {
    setState(() {});
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('room详情：ID=${widget.roomId}'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Share.share('https://itcast.cn');
            },
            icon: Icon(Icons.share),
          )
        ],
      ),
    );
  }
}
