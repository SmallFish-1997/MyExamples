import 'package:flutter/material.dart';
import 'package:hkzf/router/index.dart';
// import 'package:hkzf/widgets/page_content.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('注册页面'),
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
                    suffixIcon: IconButton(
                      icon: Icon(showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    )),
              ),
              TextField(
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Please Enter Your Confirm Password'
                  )
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              RaisedButton(
                color: Colors.lightBlue,
                child: Text('注 册', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Submit Login
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //水平居中
                children: <Widget>[
                  Text('已有账号?'),
                  FlatButton(
                    child: Text('前往登录', style: TextStyle(color: Colors.grey)),
                    onPressed: () {
                      // Navigator.pushNamed(context, Routers.register); // 在路由堆栈上新增一个
                      Navigator.pushReplacementNamed(
                          context, Routers.login); // 跳转后清掉前一个路由
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
