import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hkzf/pages/home/index.dart';
import 'package:hkzf/pages/login/index.dart';
import 'package:hkzf/pages/not_found.dart';
import 'package:hkzf/pages/room/detail.dart';

var handleHome =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return Home();
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
