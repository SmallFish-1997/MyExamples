### Flutter开发一款好客租房APP

#### 一、简单知识记录

##### Future类型

与js Promise相似，承诺返回值类型
```
Future<int> result;
```

##### Material组件 和Cupertino组件

> Material - 安卓风格的组件      Cupertino - ios风格的组件

##### 常用的Flutter组件

```
Text - 显示文字
Image - 显示图片
Icon - 用于显示图标
Container - 类似html中的div，容器组件
Row,Column - 用户水平和垂直的多组件展示，使用flex布局
Stack - 用于z轴方向的多组件展示，可以把一个组件堆叠在另外一个组件上面。（类似css的position）
Scaffold - 页面的基本组件，提供了基本的页面结构。
```

##### 引入dart组件

```
//hkzf=当前项目名称
import 'package:hkzf/widgets/page_content.dart';
```

##### Colume组件不能滚动 - ListView可以滚动

##### 获取屏幕宽度
```
var height = MediaQuery.of(context).size.width;
// 计算图片显示高度
// 屏幕宽度/图片宽度*图片高度
 
```

##### >=dart 2.3版本语法
```
if(flag)Container(
  child:Text('debug')
);
```


#### 二、项目架构

##### 2.1 编写一个简单页面

```
1. 添加PageContent组件
	1.1 新建文件/widgets/page_content.dart
	1.2 添加material依赖
	1.3 编写无状态组件
	1.4 添加name参数
	1.5 使用Scaffold
2. 添加home页面
	2.1 新建文件/pages/home/index.dart
	2.2 添加material、page_content依赖
	2.3 编写无状态组件
	2.4 使用PageContent
3. 添加Application应用根组件
	3.1 新建文件/application.dart
	3.2 添加依赖，并使用MaterialApp
	3.3 在main.dart引入application 组件
4. 测试
```



##### 2.2 安装、配置fluro并添加登录页面

> * fluro 是一个第三方的路由解决方案
> * 支持参数通配符 /room/:id
> * 简化自定义动画

添加依赖

pubspec.yaml

```
dependencies:
	fluro:"^1.5.1"
```

#### 三、页面结构

##### 3.1 底部Tab标签组件`BottomNavigationBar`

```

```



##### 3.2 首页

Home页面分为五个组件模块

```
1. 顶部区域 - searchBar
2. 轮播图区域 - IndexSwipper
3. 导航区域 - IndexNavigator
4. 房屋推荐区域 - IndexRecommend
5. 咨询区域 - Info
```



##### 3.3 图片加载优化

```
//安装flutter_advanced_networkimage ^0.5.0依赖
// CommonImage.dart
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
```

##### 3.4 常用组件

Expanded
> 该组件类似flex布局，平分布局占用比例-默认占满剩余宽度

GestureDetector
> 改组键可以定义事件操作
```
        onTap: () => updateText("Tap"),//点击
        onDoubleTap: () => updateText("DoubleTap"), //双击
        onLongPress: () => updateText("LongPress"), //长按
```


##### 3.5 有状态组件
> widget.showTitle 访问`StatefulWidget`定义的final属性
```
import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/info/datas.dart';

class InfoComponent extends StatefulWidget{
  //配置参数
  final List<InfoItem> dataList;
  final bool showTitle;
  const InfoComponent({Key key, this.dataList=infoData, this.showTitle=false}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InfoComponentState();
  }
}

class InfoComponentState extends State<InfoComponent>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child:Text(widget.showTitle));
  }
}
```



##### 3.6 List.generate 获取遍历下标值
```
伪代码
new List<int>.generate(3, (int index) => index * index);

demo代码
List.generate(
  options.length,
  (index) => Row(
    children: <Widget>[
    Radio(
    value: index,
    groupValue: value,
    onChanged: onChange,
  ),
  Text(options[index])
  ],
))
```