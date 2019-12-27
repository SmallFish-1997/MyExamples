import 'package:flutter/material.dart';
import 'package:hkzf/router/index.dart';
import 'package:hkzf/widgets/page_content.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('登录页面'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                      labelText: 'UserName',
                      hintText: 'Please Enter Your UserName')),
              TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please Enter Your Password',
                        suffixIcon:IconButton(
                        icon:Icon(showPassword?Icons.visibility:Icons.visibility_off), onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                )
                  ),
             
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              RaisedButton(
                color: Colors.lightBlue,
                child: Text('登录',style:TextStyle(color:Colors.white)),
                onPressed: () {
                  // Submit Login
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //水平居中
                children: <Widget>[
                  Text('还没有账号?'),
                  FlatButton(
                    child: Text('前往注册',style:TextStyle(color:Colors.grey)),
                    onPressed: () {
                      // Navigator.pushNamed(context, Routers.register); // 在路由堆栈上新增一个
                      Navigator.pushReplacementNamed(context, Routers.register); // 跳转后清掉前一个路由
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
