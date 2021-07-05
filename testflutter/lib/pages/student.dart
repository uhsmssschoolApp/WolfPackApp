import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:testflutter/nav.dart';
import 'package:testflutter/studentutils/feed.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../constants/consts.dart';
import 'dart:async';

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  _studentState createState() => _studentState();
}



List<Widget> screenDisplays = [
  feed(),
  Center(
    child: Text("1"),
  ),
];


int activePageNumber = 0; //the page that the user is on
// Widget curView = webviewDisplay();

class _studentState extends State<student> {
  // @override
  // void initState() {
  //   activePageNumber = 0;
  //   super.initState();
  // }
  final Map<int, Widget> segControl = const <int, Widget>{
    0: Text(
      "Twitter",
      style: TextStyle(fontFamily: "SF"),
    ),
    1: Text(
      "Inbox",
      style: TextStyle(
        fontFamily: "SF",
      ),
    ),
  };
  int curDisplay = 0; //don't touch this >:(
  int? i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Student"),
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
    );
  }
}

//int i = 0;
// WebView cond() {
//   if (i==0) {
//     return twitterYRDSB();
//   } else {
//     return twitterUHS();
//   }
// }
// WebView twitterUHS(){
//   return WebView(
//     initialUrl: uhsURL,
//     javascriptMode: JavascriptMode.unrestricted,
//   )
// }

// WebView twitterYRDSB() {
//   return WebView(
//     initialUrl: twitterURL,
//     javascriptMode: JavascriptMode.unrestricted,
//   )
// }
