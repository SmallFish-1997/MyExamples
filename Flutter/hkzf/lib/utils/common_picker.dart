import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Select弹窗工具类

class CommonPicker {
  static Future<int> showPicker(
      {BuildContext context,
      int value,
      double height = 300,
      List<String> options}) {
      var controller = FixedExtentScrollController(initialItem: value);

    // showCupertinoModalPopup - 
    // 通过Navigator.of(context).pop() 在弹窗关闭时传递参数
    return showCupertinoModalPopup<int>(
        context: context,
        builder: (BuildContext context) {
            var buttonTextStyle = TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600);

          return Container(
            height: height,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.grey[200],
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          '取消',
                          style: buttonTextStyle,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop(controller.selectedItem);
                        },
                        child: Text(
                          '确定',
                          style: buttonTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                 Expanded(
                  child: CupertinoPicker(
                    scrollController: controller, // 监听参数变化
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    itemExtent: 32.0,
                    onSelectedItemChanged: (val) {},
                    children: options.map((item) => Text(item)).toList(),
                  ),
                )
              ],
            ),
          );
        });
  }
}
