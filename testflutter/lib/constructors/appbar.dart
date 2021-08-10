import 'package:flutter/material.dart';
import 'package:testflutter/themes/changetheme.dart';

AppBar mainAppBar(String curPage) {
  return AppBar(
    actions: [
      themeChanger(),
    ],
    bottom: PreferredSize(
      child: Container(
        color: Colors.black,
        height: 0.4,
      ),
      preferredSize: Size.fromHeight(4.0),
    ),
    title: Text(
      curPage,
    ),
    centerTitle: true,
  );
}
