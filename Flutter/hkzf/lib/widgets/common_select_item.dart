import 'package:flutter/material.dart';
import 'package:hkzf/pages/room/subComponents/fromItem.dart';
import 'package:hkzf/utils/common_picker.dart';

class CommonSelectItem extends StatelessWidget {
  final String label;
  final int value;
  final List<String> options;
  final Function(int) onChange;
  const CommonSelectItem(
      {Key key, this.label, this.value, this.options, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: RoomAddFromItem(
      label: label,
      contentBuilder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent, //点击空白区域触发事件
          onTap: () {
            var result = CommonPicker.showPicker(
              context: context,
              options: options,
              value: value
            );
            result.then((picker_val){
              if(value!=picker_val && picker_val!=null && onChange!=null){
                onChange(picker_val);
              }
            });
          },
          child: Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  options[value],
                  style: TextStyle(fontSize: 16.0),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
