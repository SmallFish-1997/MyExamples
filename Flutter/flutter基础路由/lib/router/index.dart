import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './handler.dart';
class Routers {
  static String home = '/';
  static String login = '/login';
  static String room = '/room/:roomId';
  static void configureRoutes(Router router) {
    router.define(home, handler: handleHome);
    router.define(login, handler: handleLogin);
    router.define(room, handler: roomDetail);
    router.notFoundHandler = notFound;
  }
}
