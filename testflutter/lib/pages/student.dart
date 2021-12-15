import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:testflutter/studentutils/feed.dart';
import 'package:testflutter/studentutils/inbox.dart';
import 'package:webview_flutter/webview_flutter.dart';

DateTime? _lastQuitTime;

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  _studentState createState() => _studentState();
}

List<Widget> screenDisplays = [
  inbox(),
  feed(),
];


class _studentState extends State<student> {

  final Map<int, Widget> segControl = const <int, Widget>{
    0: Text(
      "Inbox",
      style: TextStyle(fontFamily: "SF"),
    ),
    1: Text(
      "Twitter",
      style: TextStyle(
        fontFamily: "SF",
      ),
    ),
  };
  int curDisplay = 0; //don't touch this >:(
  int? i;
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
        bottomNavigationBar: Nav(),
        appBar: mainAppBar("Student",false),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: CupertinoSlidingSegmentedControl<int>(
                    children: segControl,
                    groupValue: curDisplay,
                    onValueChanged: (i) {
                      setState(() {
                        curDisplay = i!;
                      });
                    }),
              ),
            ),
    
            Expanded(
              flex: 7,
              child: screenDisplays[curDisplay],
            ),
          ],
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
