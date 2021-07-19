import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/nav.dart';

import '../appbar.dart';

class more extends StatelessWidget {
  const more({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> morePaths = <String>["/themesettings", "/notifications"];
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("More"),
      body: ListView(
        children: [
          Container(
            height: 70,
            margin: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              "General Settings",
              style: subTitle,
            ),
          ),
          Card(
            // margin: const EdgeInsets.only(top: 4),
            child: ListTile(
              leading: Icon(Icons.circle_notifications),
              trailing: arrowRight,
              title: Text(
                "Notifications",
                style: settingTiles,
              ),
              onTap: () {
                Navigator.pushNamed(context, morePaths[1]);
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings_display),
              trailing: arrowRight,
              onTap: () {
                Navigator.pushNamed(context, morePaths[0]);
              },
              title: Text(
                "Theme",
                style: settingTiles,
              ),
            ),
          ),
          Container(
            height: 70,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 16),
            child: Text(
              "Your Voice",
              style: subTitle,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.book_rounded),
              trailing: arrowRight,
              title: Text(
                "Resources",
                style: settingTiles,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.record_voice_over_outlined),
              title: Text(
                "Feedback",
                style: settingTiles,
              ),
              trailing: arrowRight,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.help),
              title: Text(
                "FAQ",
                style: settingTiles,
              ),
              trailing: arrowRight,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.emoji_people_rounded),
              title: Text(
                "Get Invovled!",
                style: settingTiles,
              ),
              trailing: arrowRight,
            ),
          ),
        ],
      ),
    );
  }
}
