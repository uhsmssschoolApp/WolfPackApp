import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testflutter/clubutils/clubannouncements.dart';
import 'package:testflutter/clubutils/clubcalendar.dart';
import 'package:testflutter/clubutils/clubresources.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:webview_flutter/webview_flutter.dart';

//firestore packages
import '../constructors/appbar.dart';

DateTime? _lastQuitTime;

class clubs extends StatefulWidget {
  const clubs({Key? key}) : super(key: key);

  //Firestore
  @override
  _clubsState createState() => _clubsState();
}

class _clubsState extends State<clubs> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
        bottomNavigationBar: Nav(),
        appBar: mainAppBar("Clubs",false),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // TO VISIT TESTING SCAFFOLD
              // OutlinedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, "/testingpage");
              //   },
              //   // ignore: prefer_const_constructors
              //   child: Text("Go to Testing Page"),
              // ),
              // text that says today
              Container(
                margin: const EdgeInsets.only(top: 16.0, left: 16.0),
                width: screenWidth * 0.9,
                height: 50,
                // ignore: prefer_const_constructors
                child: Text(
                  "Today",
                  style: const TextStyle(
                    fontFamily: "SFBold",
                    fontSize: 20.0,
                  ),
                ),
              ),
              // container for club announcements
              const ClubAnnouncements(),
              // calendar webview of current clubs
              const ClubCalendar(),
              // text for resources
              Container(
                margin: const EdgeInsets.only(top: 24.0, left: 16.0),
                width: screenWidth * 0.9,
                height: 50,
                // ignore: prefer_const_constructors
                child: Text(
                  "Resources",
                  style: const TextStyle(
                    fontFamily: "SFBold",
                    fontSize: 20.0,
                  ),
                ),
              ),
              // the club resources cards
              const ClubResources(),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }
}
