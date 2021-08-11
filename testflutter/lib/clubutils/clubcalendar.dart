import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';

class ClubCalendar extends StatefulWidget {
  const ClubCalendar({Key? key}) : super(key: key);

  @override
  _ClubCalendarState createState() => _ClubCalendarState();
}

class _ClubCalendarState extends State<ClubCalendar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: topMargin,
      height: 250,
      width: screenWidth,
      alignment: Alignment.center,
      child: Container(
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: homeCorners,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor,
                blurRadius: 7,
                offset: const Offset(0, 5)),
          ],
        ),
        // the decoration of the red box and text
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: maroon,
                    borderRadius: homeCorners,
                  ),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Image.asset(
                      "assets/tear-off-calendar_1f4c6.png",
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
                // the two lines of text
                Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 30,
                      width: 200,
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Club Scheduling",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontFamily: "SFBold",
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(top: 6),
                      height: 15,
                      width: 200,
                      // ignore: prefer_const_constructors
                      child: Text(
                        "See what's running today!",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontFamily: "SF",
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // insert webview widget here UNDER THIS COMMENT

            // the outlined button (gets pushed down by the webview)
            Container(
              width: screenWidth * 0.7,
              height: 30,
              margin: const EdgeInsets.only(top: 8),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "View Calendar in Browser",
                    style: TextStyle(
                      fontFamily: "SFBold",
                      color: maroon,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
