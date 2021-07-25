import 'package:flutter/material.dart';

AppBar mainAppBar(String curPage) {
  return AppBar(
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
