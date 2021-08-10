import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:testflutter/studentutils/feed.dart';
import 'package:testflutter/studentutils/inbox.dart';

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  _studentState createState() => _studentState();
}

List<Widget> screenDisplays = [
  feed(),
  inbox(),
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
