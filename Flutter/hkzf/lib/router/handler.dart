import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hkzf/pages/login/index.dart';
import 'package:hkzf/pages/login/register.dart';
import 'package:hkzf/pages/not_found.dart';
import 'package:hkzf/pages/room/add.dart';
import 'package:hkzf/pages/room/detail.dart';
import 'package:hkzf/pages/room/manage.dart';
import 'package:hkzf/pages/setting/index.dart';
import 'package:hkzf/pages/tabs.dart';

var handleHome =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return Tabs();
});
var handleLogin =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return Login();
});
var notFound =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return NotFoundPage();
});
var roomDetail =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RoomDetailPage(roomId:params["roomId"][0]);
});
var registerPage =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return Register();
});
var settingPage =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return SettingPage();
});
var roomManagePage =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RoomManagePage();
});
var roomAddPage =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RoomAddPage();
});
