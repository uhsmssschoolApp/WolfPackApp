import 'package:flutter/material.dart';
import 'package:testflutter/themes/changetheme.dart';

AppBar mainAppBar(String curPage, bool showBack) {
  return AppBar(
    automaticallyImplyLeading: showBack,
    // ignore: prefer_const_literals_to_create_immutables
    actions: [
      // ignore: prefer_const_constructors
      themeChanger(),
    ],
    bottom: PreferredSize(
      child: Container(
        color: Colors.black,
        height: 0.4,
      ),
      preferredSize: const Size.fromHeight(4.0),
    ),
    title: Text(
      curPage,
    ),
    centerTitle: true,
  );
}
