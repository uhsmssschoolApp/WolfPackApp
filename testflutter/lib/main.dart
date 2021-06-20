import 'package:flutter/material.dart';
import 'package:testflutter/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "testing",
      theme: ThemeData(fontFamily: "wingding"),
      home: Nav(),
      debugShowCheckedModeBanner: false,
    );
  }
}