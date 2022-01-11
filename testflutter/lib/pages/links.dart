import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testflutter/constants/icons.dart';
import 'package:testflutter/constructors/linktile.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constructors/appbar.dart';
import '../constants/consts.dart';

DateTime? _lastQuitTime;

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

List<Widget> customLinksList = <Widget>[
  linkTile(
      const Icon(LinksIcon.account_balance), "YRDSB Website", yrdsbWebsite),
  linkTile(const Icon(LinksIcon.link), "UHS Website", uhsWebsite),
  linkTile(const Icon(LinksIcon.exclamation_triangle), "REPORT IT", reportIt)
];

class _linksState extends State<links> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastQuitTime == null ||
            DateTime.now().difference(_lastQuitTime!).inSeconds > 4) {
          _lastQuitTime = DateTime.now();
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Press back Button again to exit')));
          return false;
        }
        return true;
      },
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, "/editlinks");
        //   },
        //   tooltip: "Edit my own links!",
        //   child: const Icon(
        //     Icons.edit,
        //     color: Colors.white,
        //   ),
        // ),
        bottomNavigationBar: Nav(),
        appBar: mainAppBar("Links", false),
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
                    linkTile(const Icon(LinksIcon.pencil_squared),
                        "TeachAssist", ta),
                    linkTile(const Icon(LinksIcon.child), "Guidance", guidance),
                    linkTile(const Icon(LinksIcon.money), "School Cash Online",
                        schoolCashOnline),
                    linkTile(const Icon(LinksIcon.road), "My Pathway Planner",
                        pathwayPlanner),
                    linkTile(
                        const Icon(LinksIcon.graduation_cap), "OUAC", ouac),
                    linkTile(const Icon(Icons.school_outlined),  "OCAS", ocas),
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
                    linkTile(const Icon(LinksIcon.paper_plane),
                        "Teacher Contact", teacherContact),
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
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: customLinksList.length,
                    itemBuilder: (context, index) {
                      return customLinksList[index];
                    }),
              ),
              Container(
                margin: usualMargin,
              )
            ],
          ),
        ),
      ),
    );
  }
}

launchURL(String url) async {
  launch(url);
}
