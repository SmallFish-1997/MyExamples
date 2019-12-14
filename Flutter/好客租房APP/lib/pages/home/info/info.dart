import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/info/datas.dart';
import 'package:hkzf/widgets/commonImage.dart';
var normalText = TextStyle(color: Colors.grey);
class InfoComponent extends StatefulWidget{
  final List<InfoItem> dataList;
  final bool showTitle;
  
  InfoComponent({Key key, this.dataList=infoData, this.showTitle=false}) : super(key: key);
  @override
  InfoComponentState createState() => new InfoComponentState();
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return InfoComponentState();
  // }
}

class InfoComponentState extends State<InfoComponent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(children: <Widget>[
        widget.showTitle?(Container(child: Text('最新咨询',style: TextStyle(fontSize: 16.0)),padding: EdgeInsets.all(10.0),alignment: Alignment.centerLeft,)):Text(''),
        Column(children: widget.dataList.map((item)=>Container(
          padding: EdgeInsets.only(left:10.0,bottom: 10.0,right:10.0),
          height: 100.0,
          child:Row(children: <Widget>[
            CommonImage(item.imageUri,width:120.0),
            Padding(padding: EdgeInsets.only(left:10.0),),
            Expanded(
              
              child: Column(children: <Widget>[
                Text(item.title),
                Row(children: <Widget>[
                  Text(item.source,style:normalText),
                  Text(item.time,style:normalText),
                ],mainAxisAlignment:MainAxisAlignment.spaceBetween)
              ],mainAxisAlignment:MainAxisAlignment.spaceBetween),
            )
          ],)
        )).toList(),)
        
      ],),
    );
  }
}