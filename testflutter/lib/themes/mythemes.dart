import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? currentMode;
// check shared prefs in future
Future<bool> _getisDarkMode() async {
  final prefs = await SharedPreferences.getInstance();
  final currentDisplayMode = prefs.getBool("currentMode");
  if (currentDisplayMode == null) {
    print("not found");
    return false;
  } else {
    print("found");
    return currentDisplayMode;
  }
}

Future<void> startUp() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool("currentMode", false);
}

Future<void> changeMode() async {
  final prefs = await SharedPreferences.getInstance();
  bool isDark = await _getisDarkMode();
  await prefs.setBool("currentMode", !isDark);
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.dark;
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    shadowColor: Colors.black,
    colorScheme: ColorScheme(
      primary: const Color(0xFF616161),
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
    shadowColor: Colors.grey,
    colorScheme: ColorScheme(
      primary: Colors.black,
      primaryVariant: Colors.black,
      secondary: maroon,
      secondaryVariant: Colors.black,
      surface: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
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
