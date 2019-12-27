import 'package:flutter/material.dart';

class RoomAddTitle extends StatelessWidget{
  final String title;

  const RoomAddTitle(this.title,{Key key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10,top: 15,bottom: 10),
      child: Text(title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w800),),
    );
  }
}