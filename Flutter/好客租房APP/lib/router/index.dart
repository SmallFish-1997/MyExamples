import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './handler.dart';
class Routers {
  static String home = '/';
  static String login = '/login';
  static String room = '/room/:roomId';
  static String register = '/register';
  static String setting = '/setting';
  static String roomManage = '/roomManage';
  static Router routes = Router();
  static Router configureRoutes(Router router) {
    // router = null;
    // router = Router();
    router.define(home, handler: handleHome);
    router.define(login, handler: handleLogin);
    router.define(room, handler: roomDetail);
    router.define(register, handler: registerPage);
    router.define(setting, handler: settingPage);
    router.define(roomManage, handler: roomManagePage);
    router.notFoundHandler = notFound;
    routes = router;
    return router;
  }
}
