import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/index_navigatory_item.dart';
import 'package:hkzf/widgets/commonImage.dart';
class NavigatorList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding:EdgeInsets.only(top:10.0,bottom: 10.0),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList.map((item)=>InkWell(
          onTap: (){
            item.onTap(context);
          },
          child:Column(children: <Widget>[
            CommonImage(item.imageUri,width: 40.0,),
            Text(item.title)
          ],)
        )).toList()
      )
    );
  }
}