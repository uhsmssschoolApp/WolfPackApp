import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/themes/mythemes.dart';

class themeChanger extends StatelessWidget {
  const themeChanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    bool value = themeprovider.isDarkMode;
    return IconButton(
      icon: Icon(Icons.settings_display),
      splashRadius: 0.1,
      // value: themeprovider.isDarkMode,
      onPressed: () {
        value = !value;
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
