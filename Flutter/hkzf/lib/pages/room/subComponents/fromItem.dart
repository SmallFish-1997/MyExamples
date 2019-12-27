import 'package:flutter/material.dart';

class RoomAddFromItem extends StatelessWidget {
  final String label;
  final Widget suffix;
  final String suffixText;
  final String hintText;
  final Widget Function(BuildContext context) contentBuilder;

  const RoomAddFromItem(
      {Key key,
      this.label,
      this.suffix,
      this.suffixText,
      this.hintText,
      this.contentBuilder})
      : super(key: key);

  renderSuffixContent() {
    if (suffix != null) {
      return suffix;
    }
    if (suffixText != null) {
      return Text(suffixText);
    }
    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.grey[300]))),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(label),
              width: 80,
            ),
            Expanded(
              child: this.contentBuilder != null
                  ? this.contentBuilder(context)
                  : TextField(
                      decoration: InputDecoration(
                          hintText: hintText,
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey)),
                    ),
            ),
            renderSuffixContent()
          ],
        ));
  }
}
