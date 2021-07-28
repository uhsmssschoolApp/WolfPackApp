import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/themes/mythemes.dart';

class themeChanger extends StatelessWidget {
  const themeChanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeprovider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
