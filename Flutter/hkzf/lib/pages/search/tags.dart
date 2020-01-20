import 'package:flutter/material.dart';

class SearchItemTag extends StatelessWidget {
  final String tagName;

  const SearchItemTag(this.tagName, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color background = Colors.grey;
    Color color = Colors.black;
    switch (tagName) {
      case "近地铁":
        background = Colors.orange[50];
        color = Colors.orange;
        break;
      case "集中供暖":
        background = Colors.blue[50];
        color = Colors.blue;
        break;
      case "随时看房":
      case "新上":
        background = Colors.red[50];
        color = Colors.red;
        break;
      // default:
    }
    // TODO: implement build
    return Container(
        padding: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 4.0, right: 4.0),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            color: background, borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          tagName,
          style: TextStyle(color: color, fontSize: 10.0),
        ));
  }
}
