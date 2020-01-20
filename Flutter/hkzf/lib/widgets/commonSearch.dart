import 'package:flutter/material.dart';
import 'package:hkzf/widgets/commonImage.dart';

var paddingRight10 = EdgeInsets.only(right: 10.0);
var fontStyle = TextStyle(color: Colors.black, fontSize: 14.0);

class CommonSearch extends StatefulWidget {
  final bool showLocation;
  final bool showBackBtn;
  final String inputValue;
  final Function onBackEvent;
  final Function onCancel;

  const CommonSearch(
      {Key key,
      this.showLocation = false,
      this.showBackBtn = false,
      this.inputValue,
      this.onCancel,
      this.onBackEvent})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommonSearchState();
  }
}

class CommonSearchState extends State<CommonSearch> {
  Widget renderLocation() {
    if (widget.showLocation) {
      return Padding(
        padding: paddingRight10,
        child: GestureDetector(
            child: Row(
          children: <Widget>[
            Icon(Icons.room, color: Colors.deepOrange, size: 16.0),
            Text('深圳', style: fontStyle),
          ],
        )),
      );
    }
    return Text('');
  }

  Widget renderBackIcon() {
    if (widget.showBackBtn) {
      Padding(
        padding: paddingRight10,
        child: GestureDetector(
            child:
                Icon(Icons.chevron_left, color: Colors.deepOrange, size: 28.0)),
      );
    }
    return Text('');
  }

  TextEditingController _controller = TextEditingController();
  String input_text = '';
  void clearInput() {
    print('clear value');
    _controller.clear();
    setState(() {
      input_text = '';
    });
  }

  renderClearIcon() {
    return GestureDetector(
        onTap: () {
          clearInput();
        },
        child: Icon(
          Icons.clear,
          size: 15,
          color:input_text ==''?Colors.grey[200]:Colors.grey,
        ));
  }
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Row(
      children: <Widget>[
        renderLocation(),
        renderBackIcon(),
        Expanded(
            child: Container(
          height: 35.0,
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: TextField(
            controller: _controller,
            style: TextStyle(fontSize: 14),
            onChanged: (String value) {
              setState(() {
                input_text = value;
              });
            },
            textInputAction: TextInputAction.search, //修改手机键盘右下角=搜索
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入搜索内容',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                contentPadding: EdgeInsets.only(left: -10, top: 8),
                suffixIcon:renderClearIcon(),
                icon: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.search,
                      size: 14,
                      color: Colors.grey,
                    ))),
          ),
        )),
        Padding(
          padding: paddingRight10,
          child: Text('取消', style: fontStyle),
        ),
        // CommonImage('static/icons/widget_search_bar_map.png'),
      ],
    ));
  }
}
