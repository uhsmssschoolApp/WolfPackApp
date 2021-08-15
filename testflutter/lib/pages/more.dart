import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:testflutter/pages/links.dart';

import '../constructors/appbar.dart';

class more extends StatelessWidget {
  const more({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> morePaths = <String>[
      "/themesettings", // DOESNT EXIST DONT ACCESS 0TH INDEX!!
      "/notifications",
      "/resources",
      "/feedback"
    ];
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
              onTap: () {
                // Navigator.pushNamed(context, morePaths[2]);
                launchURL(libraryResources);
              },
              title: Text(
                "Resources",
                style: settingTiles,
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, morePaths[3]);
              },
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
        ],
      ),
    );
  }
}
