// 搜索结果列表Item

import 'package:flutter/material.dart';
import 'package:hkzf/pages/search/data.dart';
import 'package:hkzf/pages/search/tags.dart';
import 'package:hkzf/utils/navigator_util.dart';
import 'package:hkzf/widgets/commonImage.dart';

var paddingSplit = Padding(padding: EdgeInsets.only(bottom: 5.0));

class RoomListItem extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItem(this.data, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        NavigatorUtil.navigatorTo(context, '/roomDetail/${data.id}');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          children: <Widget>[
            CommonImage(
              data.imageUri,
              width: 132.5,
              height: 90.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // 标题
                  Text(
                    data.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // 副标题
                  Text(
                    data.subTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 13.0),
                  ),
                  // 标签
                  paddingSplit,
                  Wrap(
                    children:
                        data.tags.map((item) => SearchItemTag(item)).toList(),
                  ),
                  // 价格
                  Text("${data.price}元/月",
                      style: TextStyle(color: Colors.deepOrange))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
