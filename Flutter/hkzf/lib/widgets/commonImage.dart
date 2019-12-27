import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter/material.dart';
final networkImageReg = RegExp('^http');
final localImageReg = RegExp('^static');
class CommonImage extends StatelessWidget{
  final String src;
  final double width;
  final double height;
  final BoxFit fit;

  const CommonImage(this.src, {Key key,  this.width, this.height, this.fit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(networkImageReg.hasMatch(src)){
      return Image(
        width:width,
        height:height,
        fit: fit,
        image:AdvancedNetworkImage(
          src,
          useDiskCache:true, //是否缓存
          cacheRule: CacheRule(maxAge: Duration(days: 7)), //缓存时间
          timeoutDuration: Duration(seconds: 20) //请求超时
        )
      );
    }
    if(localImageReg.hasMatch(src)){
      return Image.asset(
        src,
        width:width,
        height:height,
        fit: fit,
      );
    }

    assert(false,'图片src加载失败，请检查url是否正确');
    // TODO: implement build
    return Container();
  }
}