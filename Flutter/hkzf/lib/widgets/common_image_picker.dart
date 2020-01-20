/**
 * 图片选择器公用组件
 * */
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// 图片宽750px，高424px；
var imageWidth = 750.0;
var imageHeight = 424.0;
// 计算750*424宽高比
var imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;
  const CommonImagePicker({Key key, this.onChange}) : super(key: key);
  @override
  CommonImagePickerState createState() => CommonImagePickerState();
}

class CommonImagePickerState extends State<CommonImagePicker> {
  List<File> files = []; //图片列表-File类型
  // 使用image_picker插件读取手机本地图片
  _pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (null == image) return;
    setState(() {
      // files..add(image) - 表示files基础上添加image后返回新的files
      files = files..add(image);
    });
    // 触发onChange回调
    if (widget.onChange != null) {
      widget.onChange(files);
    }
  }

  @override
  Widget build(BuildContext context) {
    // 计算图片宽度 - 屏幕宽度 - 10*4 (padding边距) / 3 (一行图片数量)
    var width = (MediaQuery.of(context).size.width - 10.0 * 4) / 3;
    // 计算图片高度 - 图片宽度 / 750*424的宽高比
    var height = width / imageWidthHeightRatio;

    // 添加图片按钮
    Widget addButton = GestureDetector(
      onTap: () {
        _pickImage();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        height: height,
        color: Colors.grey,
        child: Center(
          child: Text('+',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w100)),
        ),
      ),
    );

    Widget wrapper(File file){
      return Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Image.file(file, width: width, height: height, fit: BoxFit.cover),
          Positioned(
            right: -20.0,
            top: -20.0,
            // 删除图片按钮
            child: IconButton(
              onPressed: () {
                // 移除指定file文件
                setState(() {
                  files = files..remove(file);
                });
                // 触发外部组件回调
                if (null != widget.onChange) {
                  widget.onChange(files);
                }
              },
              icon: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
            ),
          )

        ],
      );
    }

    // 遍历files列表并添加addButton添加图片按钮，映射成Widget可渲染列表
    List<Widget> list = files.map((item)=>wrapper(item)).toList()..add(addButton);



    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: list,
      ),
    );
  }
}
