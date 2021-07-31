import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/themes/mythemes.dart';

class themeChanger extends StatefulWidget {
  const themeChanger({Key? key}) : super(key: key);

  @override
  State<themeChanger> createState() => _themeChangerState();
}

class _themeChangerState extends State<themeChanger> {
  // Future<bool> _getisDarkMode() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final darkmodeBool = prefs.getBool("value");
  //   if (darkmodeBool == null) {
  //     print("not found");
  //     return false;
  //   } else {
  //     print("found");
  //     return darkmodeBool;
  //   }
  // }

  // Future<void> changeMode() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool(t, value)
  // }

  bool? value;

  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    value = themeprovider.isDarkMode;
    // _getisDarkMode();
    return IconButton(
      icon: Icon(Icons.settings_display),
      splashRadius: 0.1,
      onPressed: () {
        value = !value!;
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value!);
      },
    );
  }
}
