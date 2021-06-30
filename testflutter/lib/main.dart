import 'package:flutter/material.dart';
import 'package:testflutter/clubs.dart';
// import 'package:testflutter/nav.dart';
import 'package:testflutter/home.dart';
import 'links.dart';
import 'student.dart';
import 'student.dart';
import 'settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "testing",
      theme: ThemeData(
        // fontFamily: "wingding"
        scaffoldBackgroundColor: const Color(0xFFdadada),
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      home: home(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => home(),
        "/links": (context) => links(),
        "/student": (context) => student(),
        "/clubs": (context) => clubs(),
        "/settings": (context) => settings(),
      },
    );
  }
}
