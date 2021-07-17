import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:testflutter/constants/consts.dart';

enum Appearance { dark, light }

class theme extends StatefulWidget {
  const theme({Key? key}) : super(key: key);

  @override
  _themeState createState() => _themeState();
}

class _themeState extends State<theme> {
  Appearance? cur = Appearance.light;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Theme Settings"),
      body: Column(
        children: [
          Container(
            height: 70,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 16),
            child: Text(
              "Appearance",
              style: TextStyle(
                fontFamily: "SFBold",
                fontSize: 17,
              ),
            ),
          ),
          ListTile(
            leading: Radio<Appearance>(
                groupValue: cur,
                value: Appearance.light,
                onChanged: (Appearance? change) {
                  setState(() {
                    cur = change;
                  });
                }),
            title: Text(
              "Light Mode",
              style: TextStyle(
                fontFamily: "SF",
                color: grey,
              ),
            ),
          ),
          ListTile(
            leading: Radio<Appearance>(
                groupValue: cur,
                value: Appearance.dark,
                onChanged: (Appearance? change) {
                  setState(() {
                    cur = change;
                  });
                }),
            title: Text(
              "Dark Mode",
              style: TextStyle(
                fontFamily: "SF",
                color: grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
