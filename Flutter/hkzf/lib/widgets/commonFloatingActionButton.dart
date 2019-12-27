import 'package:flutter/material.dart';

class CommonFloatingActionButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const CommonFloatingActionButton(
    this.title,
    this.onTap, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        height: 40,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child:
              Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}
