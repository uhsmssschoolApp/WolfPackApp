import 'dart:html';

import 'package:flutter/material.dart';
import 'package:testflutter/icons.dart';
// import 'package:testflutter/redirect.dart';
import 'package:url_launcher/url_launcher.dart';

Color grey = const Color(0xFF6b6b6b);
EdgeInsets usualMargin = const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0);
String ta = "https://ta.yrdsb.ca/yrdsb/";

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

class _linksState extends State<links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFFe0e0e0),
          title: Text(
            "Links",
            style: TextStyle(
              color: grey,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
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
                      style: TextStyle(fontSize: 15.0),
                    ),
                    trailing: Icon(LinksIcon.keyboard_arrow_right),
                    onTap: launchTA(ta),
                  ),
                  ListTile(
                    leading: Icon(LinksIcon.child),
                    title: Text(
                      "Guidance",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    trailing: Icon(LinksIcon.keyboard_arrow_right),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

launchTA(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Can't open";
  }
}
