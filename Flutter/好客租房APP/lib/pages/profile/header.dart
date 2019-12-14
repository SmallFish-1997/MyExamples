import 'package:flutter/material.dart';

var titleStyle = TextStyle(color: Colors.white, fontSize: 20);
// 未登录默认头像
const normal_notlogin_avatar =
    "https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbgbqv2nj30i20i2wen.jpg";
// 已登录默认头像
const normal_login_avatar =
    "https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbnovh8jj30hr0hrq3l.jpg";

class ProfileHeader extends StatefulWidget {
  final bool isLogin;
  final String avatarUri;

  const ProfileHeader({Key key, this.isLogin = false, this.avatarUri = ''})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileHeaderState();
  }
}

class ProfileHeaderState extends State<ProfileHeader> {
  Widget getAvatarUri() {
    if (widget.isLogin) {
      var avatar_uri =
          widget.avatarUri != '' ? widget.avatarUri : normal_login_avatar;
      return CircleAvatar(
        backgroundImage: NetworkImage(avatar_uri),
      );
    }
    return CircleAvatar(
      backgroundImage: NetworkImage(normal_notlogin_avatar),
    );
  }

  Widget getText() {
    var top_text = '登录';
    var bottom_text = '登录后体验更多功能';

    if(widget.isLogin){
      top_text = '用户名';
      bottom_text = '查看编辑个人资料';
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          top_text,
          style: titleStyle,
        ),
        Text(
          bottom_text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.deepOrangeAccent),
      height: 95,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: getAvatarUri(),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20.0, left: 15), child: getText())
        ],
      ),
    );
  }
}
