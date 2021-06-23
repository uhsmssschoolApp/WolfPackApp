import 'package:flutter/material.dart';
import 'package:testflutter/icons.dart';
import 'package:url_launcher/url_launcher.dart';

// reminder to handle ON TAPS LATER
Color grey = const Color(0xFF6b6b6b);
EdgeInsets usualMargin = const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0);
TextStyle linkTiles = const TextStyle(fontSize: 15.0);
Icon arrowRight = const Icon(LinksIcon.keyboard_arrow_right);

// urls
String ta = "https://ta.yrdsb.ca/yrdsb/";
String guidance =
    "http://www.yrdsb.ca/schools/unionville.hs/guidance/Pages/default.aspx";
String schoolCashOnline = "https://yrdsb.schoolcashonline.com/Home/SignIn";
String pathwayPlanner =
    "https://mypathwayplanner.yrdsb.ca/LoginFormIdentityProvider/Login.aspx?ReturnUrl=/LoginFormIdentityProvider/Default.aspx";
String ouac = "https://www.ouac.on.ca/";
String gapps = "https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox";
String samtheWolf = "https://www.instagram.com/samthewolfofficial/";
String teacherContact =
    "http://www.yrdsb.ca/schools/unionville.hs/info/Pages/Staff.aspx";
String yrdsbWebsite = "https://www2.yrdsb.ca/";
String reportIt =
    "https://secure.yrdsb.ca/Forms/ReportIt/_layouts/FormServer.aspx?XsnLocation=https://secure.yrdsb.ca/FormServerTemplates/ReportItv2.xsn&Source=https://secure.yrdsb.ca&DefaultItemOpen=1";

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
