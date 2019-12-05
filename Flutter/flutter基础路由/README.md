
#### 一、简单知识记录

Material组件 和Cupertino组件

> Material - 安卓风格的组件      Cupertino - ios风格的组件

常用的Flutter组件

```
Text - 显示文字
Image - 显示图片
Icon - 用于显示图标
Container - 类似html中的div，容器组件
Row,Column - 用户水平和垂直的多组件展示，使用flex布局
Stack - 用于z轴方向的多组件展示，可以把一个组件堆叠在另外一个组件上面。（类似css的position）
Scaffold - 页面的基本组件，提供了基本的页面结构。
```

引入dart组件

```
//hkzf=当前项目名称
import 'package:hkzf/widgets/page_content.dart';
```



二、项目架构

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



##### 2.3 优化路由配置

> 配置404页面，添加`/room/:roomId`动态参数页面
