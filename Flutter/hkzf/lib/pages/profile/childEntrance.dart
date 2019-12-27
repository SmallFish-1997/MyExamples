// 个人中心子入口组件
import 'package:flutter/material.dart';
import 'package:hkzf/pages/profile/data.dart';
import 'package:hkzf/widgets/commonImage.dart';

class ProfileChildEntrance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Wrap(
          spacing: 3,
          runSpacing: 3,
          children: childEntranceList
              .map((item) => Container(
                    margin: EdgeInsets.only(top: 15),
                    width: (MediaQuery.of(context).size.width / 3.1),
                    // decoration: BoxDecoration(color: Colors.deepOrange),
                    child: GestureDetector(
                      onTap: () {
                        if (item.onTapHandle != null) {
                          item.onTapHandle(context);
                        }
                      },
                      child: Column(children: <Widget>[
                        CommonImage(
                          item.imageUri,
                          width: 40,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5),),
                        Text(item.title)
                      ]),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
