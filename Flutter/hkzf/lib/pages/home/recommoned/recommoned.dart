import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/recommoned/datas.dart';
import 'package:hkzf/widgets/commonImage.dart';
const font_color = TextStyle(color: Colors.black54);
class RecommonedComponent extends StatelessWidget {
  final List<HomeRecommonedData> dataList = defaultRecommonedList;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
          padding: EdgeInsets.all(10.0),

      child: Column(
        children: <Widget>[
          Container(
            child: Row(
            children: <Widget>[
              Text('房屋推荐',style: TextStyle(fontSize: 16.0),),
              Text('更多', style: font_color),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          )),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Wrap(
            spacing: 10.0, //元素水平之间的距离
            runSpacing: 10.0, //元素垂直之间的距离
            children: dataList
                .map((item) => Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                        Column(children: <Widget>[
                          Text(item.title,style: font_color,),
                          Padding(padding: EdgeInsets.only(top: 10.0),),
                          Text(item.subTitle,style: font_color,),
                        ],mainAxisAlignment: MainAxisAlignment.center,),//文字
                        CommonImage(item.imageUri,width: 60.0,)
                      ],),
                      decoration: BoxDecoration(color: Colors.white),
                      height: 100.0,
                      //公式：屏幕宽度-(padding宽度*padding数量)/Item数量
                      width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2, 
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
