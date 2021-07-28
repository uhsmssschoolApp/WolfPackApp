import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/more/notifications.dart';
import 'package:testflutter/pages/clubs.dart';
import 'package:testflutter/pages/home.dart';
import 'more/resources.dart';
import 'pages/links.dart';
import 'pages/student.dart';
import 'themes/mythemes.dart';
import 'pages/more.dart';

void main() {
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: "testing",
          themeMode: themeProvider.themeMode,
          // do this later
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: home(),
          debugShowCheckedModeBanner: false,
          routes: {
            "/home": (context) => home(),
            "/links": (context) => links(),
            "/student": (context) => student(),
            "/clubs": (context) => clubs(),
            "/more": (context) => more(),
            "/notifications": (context) => notifications(),
            "/resources": (context) => resources(),
          },
        );
      });
}
