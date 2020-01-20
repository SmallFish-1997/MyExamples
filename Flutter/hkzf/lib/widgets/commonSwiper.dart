import "package:flutter/material.dart";
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hkzf/widgets/commonImage.dart';
const List<String> defautImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
]; //默认轮播图片-width:750+height:424
const int _imageHeight = 424;
const int _imageWidth = 750;
class CommonSwiper extends StatelessWidget {
  final List<String> images = defautImages;
  @override
  Widget build(BuildContext context) {
    // 屏幕宽度/图片宽度*图片高度
    var height = MediaQuery.of(context).size.width/_imageWidth*_imageHeight;
    // TODO: implement build
    return Container(
      height:height,
      child: new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return CommonImage(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(), //左右箭头
      ),
    );
  }
}
