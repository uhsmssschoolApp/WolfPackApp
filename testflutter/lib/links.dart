import 'package:flutter/material.dart';
import 'package:testflutter/icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'consts.dart';

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

class _linksState extends State<links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(
            color: Colors.black,
            height: 0.4,
          ),
          preferredSize: Size.fromHeight(4.0),
        ),
        backgroundColor: Color(0xFFeeeeee),
        title: Text(
          "Links",
          style: TextStyle(
            color: grey,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: usualMargin,
              child: ListTile(
                title: Text(
                  "School",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              margin: usualMargin,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(LinksIcon.pencil_squared),
                    title: Text(
                      "TeachAssist",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(ta);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.child),
                    title: Text(
                      "Guidance",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(guidance);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.money),
                    title: Text(
                      "School Cash Online",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(schoolCashOnline);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.road),
                    title: Text(
                      "My Pathway Planner",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(pathwayPlanner);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.graduation_cap),
                    title: Text(
                      "OUAC",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(ouac);
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: usualMargin,
              child: ListTile(
                title: Text(
                  "Contact",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: grey,
                  ),
                ),
              ),
            ),
            Card(
              margin: usualMargin,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(LinksIcon.email),
                    title: Text(
                      "GAPPS Inbox",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(gapps);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.instagram),
                    title: Text(
                      "@Samthewolf",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(samtheWolf);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.paper_plane),
                    title: Text(
                      "Teacher Contact",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(teacherContact);
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: usualMargin,
              child: ListTile(
                title: Text(
                  "Other",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: grey,
                  ),
                ),
              ),
            ),
            Card(
              margin: usualMargin,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(LinksIcon.account_balance),
                    title: Text(
                      "YRDSB Website",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(yrdsbWebsite);
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.link),
                    title: Text(
                      "UHS Website",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      // launchURL(url)
                    },
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.exclamation_triangle),
                    title: Text(
                      "REPORT IT",
                      style: linkTiles,
                    ),
                    trailing: arrowRight,
                    onTap: () {
                      launchURL(reportIt);
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: usualMargin,
            )
          ],
        ),
      ),
    );
  }
}

launchURL(String url) async {
  launch(url);
}
