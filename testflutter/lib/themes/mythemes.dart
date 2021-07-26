import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';

// Color priGrey = const Color(0xFF303030);

class MyThemes {
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme(
      primary:  const Color(0xFF616161),
      primaryVariant: const Color(0xFF4a4a4a),
      secondary: maroon,
      secondaryVariant: Colors.white,
      surface: const Color(0xFF616161),
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.grey[900],
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey[900],
      unselectedItemColor: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backwardsCompatibility: false,
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
    colorScheme: ColorScheme(
      primary:  Colors.white,
      primaryVariant: Colors.white,
      secondary: Colors.black,
      secondaryVariant: Colors.black,
      surface: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ),
    appBarTheme: AppBarTheme(
      backwardsCompatibility: false,
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
