import 'package:flutter/material.dart';
import 'constants/consts.dart';

AppBar mainAppBar(String curPage) {
  return AppBar(
    bottom: PreferredSize(
      child: Container(
        color: Colors.black,
        height: 0.4,
      ),
      preferredSize: Size.fromHeight(4.0),
    ),
    backgroundColor: Color(0xFFeeeeee),
    title: Text(
      curPage,
      style: TextStyle(
        color: grey,
        fontSize: 20.0,
        fontFamily: "SFBold",
      ),
    ),
    centerTitle: true,
    iconTheme: IconThemeData(
      color: grey,
    ),
  );
}
