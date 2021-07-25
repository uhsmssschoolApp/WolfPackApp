import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    iconTheme: IconThemeData(

    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      elevation: 0,
      backgroundColor: Colors.grey[850],
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontFamily: "SFBold",
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: const Color(0xFF454545),
      ),
      backgroundColor: Color(0xFFeeeeee),
      titleTextStyle: TextStyle(
        color: const Color(0xFF454545),
        fontSize: 20.0,
        fontFamily: "SFBold",
      ),
      elevation: 0,
    ),
  );
}
