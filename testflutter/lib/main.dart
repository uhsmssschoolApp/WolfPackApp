import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/clubs.dart';
// import 'package:testflutter/nav.dart';
import 'package:testflutter/pages/home.dart';
import 'package:testflutter/homeutils/time.dart';
import 'pages/links.dart';
import 'pages/student.dart';
// import 'student.dart';
import 'pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DateTime now = DateTime.now();
    // initDates(now);
    return MaterialApp(
      title: "testing",
      theme: ThemeData(
        // fontFamily: "wingding"
        scaffoldBackgroundColor: const Color(0xFFdadada),
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      // do this later
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
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
