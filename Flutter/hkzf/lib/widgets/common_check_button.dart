// 公用checkbox组件

import 'package:flutter/material.dart';

class CommonCheckButton extends StatelessWidget {
  final bool isChecked;

  const CommonCheckButton(this.isChecked,{Key key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return isChecked
        ? Icon(
            Icons.check_circle,
            color: Theme.of(context).primaryColor,
          )
        : Icon(
            Icons.radio_button_unchecked,
            color: Theme.of(context).primaryColor,
          );
  }
}
