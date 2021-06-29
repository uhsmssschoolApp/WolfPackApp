import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'consts.dart';

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  _studentState createState() => _studentState();
}

List<Widget> screenDisplays = [
  twitter(),
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
          Expanded(
            flex: 7,
            child: screenDisplays[curDisplay],
          ),
        ],
      ),
    );
  }
}

Widget twitter() {
  return WebView(
    initialUrl:
        "https://twitter.com/YRDSB?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
    javascriptMode: JavascriptMode.unrestricted,
  );
}
