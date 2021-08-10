import 'package:flutter/material.dart';
import 'package:testflutter/constants/icons.dart';
import 'package:testflutter/constructors/linktile.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constructors/appbar.dart';
import '../constants/consts.dart';

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

class _linksState extends State<links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Links"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: usualMargin,
              child: const ListTile(
                title: Text(
                  "School",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: "SFBold",
                  ),
                ),
              ),
            ),
            Card(
              margin: usualMargin,
              child: Column(
                children: <Widget>[
                  linkTile(
                      const Icon(LinksIcon.pencil_squared), "TeachAssist", ta),
                  linkTile(const Icon(LinksIcon.child), "Guidance", guidance),
                  linkTile(const Icon(LinksIcon.money), "School Cash Online",
                      schoolCashOnline),
                  linkTile(const Icon(LinksIcon.road), "My Pathway Planner",
                      pathwayPlanner),
                  linkTile(const Icon(LinksIcon.graduation_cap), "OUAC", ouac),
                ],
              ),
            ),
            Container(
              margin: usualMargin,
              child: const ListTile(
                title: Text(
                  "Contact",
                  style: TextStyle(
                    fontFamily: "SFBold",
                    fontSize: 17.0,
                    // color: grey,
                  ),
                ),
              ),
            ),
            Card(
              margin: usualMargin,
              child: Column(
                children: <Widget>[
                  linkTile(const Icon(LinksIcon.email), "GAPPS Inbox", gapps),
                  linkTile(const Icon(LinksIcon.instagram), "@Samthewolf",
                      samtheWolf),
                  linkTile(const Icon(LinksIcon.paper_plane), "Teacher Contact",
                      teacherContact),
                ],
              ),
            ),
            Container(
              margin: usualMargin,
              child: const ListTile(
                title: Text(
                  "Other",
                  style: TextStyle(
                    fontFamily: "SFBold",
                    fontSize: 17.0,
                    // color: grey,
                  ),
                ),
              ),
            ),
            Card(
              margin: usualMargin,
              child: Column(
                children: <Widget>[
                  linkTile(const Icon(LinksIcon.account_balance),
                      "YRDSB Website", yrdsbWebsite),
                  linkTile(
                      const Icon(LinksIcon.link), "UHS Website", uhsWebsite),
                  linkTile(const Icon(LinksIcon.exclamation_triangle),
                      "REPORT IT", reportIt)
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
