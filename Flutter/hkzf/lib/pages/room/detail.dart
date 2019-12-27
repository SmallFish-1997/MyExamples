import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget{
  final String roomId;

  const RoomDetailPage({Key key, this.roomId}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('room详情：ID=$roomId'),),
    );
  }
}