import 'package:flutter/material.dart';
import 'package:hkzf/pages/room/subComponents/fromItem.dart';

class RoomRadioItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int currency;
  final ValueChanged<int> onChange; //radio组件onChanged事件类型定义

  const RoomRadioItem(
      {Key key, this.label, this.options, this.currency, this.onChange})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: RoomAddFromItem(
      label: label,
      contentBuilder: (context) {
        return Row(
            children: List.generate(
                options.length,
                (index) => Row(
                      children: <Widget>[
                        Radio(
                          value: index,
                          groupValue: currency,
                          onChanged: onChange,
                        ),
                        Text(options[index])
                      ],
                    )));
      },
    ));
  }
}
