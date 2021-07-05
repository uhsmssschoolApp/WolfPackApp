import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:testflutter/nav.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../constants/consts.dart';
import 'dart:async';

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  _studentState createState() => _studentState();
}

List<Widget> screenDisplays = [
  twitterFeed(),
  Center(
    child: Text("1"),
  ),
];

int activePageNumber = 1; //the page that the user is on
// Widget curView = webviewDisplay();
WebView feedDisplay = WebView(
  initialUrl: twitterURL,
  javascriptMode: JavascriptMode.unrestricted,
);

class _studentState extends State<student> {
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

Widget webviewDisplay(int activePageNumber) {
  if (activePageNumber == 1) {
    return WebView(
      initialUrl: twitterURL,
      javascriptMode: JavascriptMode.unrestricted,
    );
  } else if (activePageNumber == 2) {
    return WebView(
      initialUrl: uhsURL,
      javascriptMode: JavascriptMode.unrestricted,
    );
  } else {
    return Container();
  }
}


Widget twitterFeed() {
  return Column(
    children: [
      Container(
        height: 40,
        // color: Colors.black,
        child: Row(
          children: [
            Container(
              height: 30,
              width: 90,
              // color: Colors.black,
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "@YRDSB",
                    style: TextStyle(
                      fontFamily: "SFBold",
                      color: Colors.indigo,
                    ),
                  )),
              margin: const EdgeInsets.only(left: 8),
            ),
            Container(
              height: 30,
              width: 90,
              child: OutlinedButton(
                onPressed: () {
                  
                },
                child: Text(
                  "@UHS",
                  style: TextStyle(
                    fontFamily: "SFBold",
                    color: Colors.indigo,
                  ),
                ),
              ),
              margin: const EdgeInsets.only(left: 8),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: feedDisplay,
      ),
    ],
  );
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
