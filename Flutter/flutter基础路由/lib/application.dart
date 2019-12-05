import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hkzf/router/index.dart';
// import 'package:hkzf/pages/login/index.dart';

// 有状态组件
// 组件部分
class Application extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ApplicationState();
  }
}

// 状态管理部分
class ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routers.configureRoutes(router);
    return MaterialApp(onGenerateRoute: router.generator);
  }
}

// class Application extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home:Login()
//     );
//   }
// }
