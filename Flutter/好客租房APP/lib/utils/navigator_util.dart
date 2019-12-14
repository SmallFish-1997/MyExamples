import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hkzf/router/index.dart';
class NavigatorUtil{
  static void navigatorTo(BuildContext context,String path){
    Routers.routes.navigateTo(context, path,transition:TransitionType.inFromRight);
  } 
}