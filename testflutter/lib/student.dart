import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/nav.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'consts.dart';

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
  int curDisplay = 0;
  int? i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
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
          "Student",
          style: TextStyle(
            color: grey,
            fontSize: 20.0,
            fontFamily: "SFBold",
          ),
        ),
        centerTitle: true,
      ),
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
          // Container(
          //   height: 40,
          //   color: Colors.black,
          // ),
          Expanded(
            flex: 7,
            child: screenDisplays[curDisplay],
          ),
        ],
      ),
    );
  }
}

int i = 0;

Widget feed() {
  return Column(
    children: [
      Container(
        height: 40,
        // color: Colors.black,
        child: Row(
          children: [
            OutlinedButton(
              onPressed: () {
                // i = 1;
              },
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              child: Text(
                "@YRDSB",
                style: TextStyle(
                  fontFamily: 'SF',
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // i = 1;
              },
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              child: Text(
                "@UHSUpdates",
                style: TextStyle(
                  fontFamily: 'SF',
                ),
              ),
            ),
          ],
        ),
      ),
      const Expanded(
        flex: 1,
        child: WebView(
          initialUrl: twitterURL,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    ],
  );
}

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
