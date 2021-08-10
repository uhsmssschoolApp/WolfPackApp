import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/dorianchentesting.dart';
import 'package:testflutter/homeutils/title.dart';
import 'package:testflutter/homeutils/yrdsbcalendar.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:testflutter/homeutils/time.dart';
import 'package:testflutter/pages/links.dart';
import '../constants/consts.dart';
import 'package:testflutter/homeutils/weather.dart';

int minutesTime = 0;
String curDate = "";
double globalWidth = 0.0;

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  String curTime = "";
  String announcementDate = "";
  int dateIndex = 4;
  DateTime now = DateTime.now();

  void announcements() {
    // write on tap later?
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    globalWidth = screenWidth;
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Home"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            titleRow(),
            // timecard
            Container(
              margin: topMargin,
              width: screenWidth,
              height: 250,
              child: Center(
                child: Container(
                  width: screenWidth * 0.9,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: homeCorners,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor,
                          blurRadius: 7,
                          offset: const Offset(0, 5))
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: topMargin,
                          child: Center(
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: maroon,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              child: Text(
                                curTime,
                                style: const TextStyle(
                                  fontSize: 48.0,
                                  fontFamily: "SFBold",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: hometileMargin,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Current Rotation",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: "SFBold",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: hometileMargin,
                          alignment: Alignment.topLeft,
                          child: Text(
                            periodNumber(findPeriod(minutesTime)),
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontFamily: "SFBold",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 10.0,
                        width: 300,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Container(
                          height: 10.0,
                          width: periodProgress(
                              minutesTime, findPeriod(minutesTime)),
                          decoration: BoxDecoration(
                            color: maroon,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: hometileMargin,
                          alignment: Alignment.topLeft,
                          child: Text(
                            timeStamps(findPeriod(minutesTime)),
                            style: const TextStyle(
                              fontFamily: "SF",
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // container for more text
            Container(
              margin: const EdgeInsets.only(top: 32.0, left: 16.0),
              width: screenWidth * 0.9,
              height: 50,
              child: const Text(
                "More",
                style: TextStyle(
                  fontFamily: "SFBold",
                  fontSize: 20.0,
                ),
              ),
            ),
            // covid screening form widget
            Column(
              children: [
                Container(
                  height: 150,
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
                              margin: const EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 16.0),
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: maroon,
                                borderRadius: homeCorners,
                              ),
                              child: Image.asset(
                                "assets/clipboard_1f4cb.png",
                                height: 35,
                                width: 35,
                              ),
                            ),
                            // the two lines of text
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  height: 30,
                                  width: 200,
                                  child: const Text(
                                    "COVID Screening Form",
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
                                  child: const Text(
                                    "Open the screening form here.",
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
                        Container(
                          width: screenWidth * 0.7,
                          height: 30,
                          margin: const EdgeInsets.only(top: 24),
                          child: OutlinedButton(
                              onPressed: () {
                                // launch covid screening here
                              },
                              child: Text(
                                "Open in Browser",
                                style: TextStyle(
                                  fontFamily: "SFBold",
                                  color: maroon,
                                ),
                              )),
                        ),
                        // INSERT TEXT CHILD OR CONTAINER THAT HAS THE TEXT HERE ABOVE THIS COMMENT
                      ],
                    ),
                  ),
                ),
                // announcements widget
                Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  width: screenWidth * 0.9,
                  height: 300,
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 16.0),
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: maroon,
                              borderRadius: homeCorners,
                            ),
                            child: Image.asset(
                              "assets/cheering-megaphone_1f4e3.png",
                              height: 35,
                              width: 35,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                height: 30,
                                width: 200,
                                child: const Text(
                                  "Announcements",
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
                                child: const Text(
                                  "Get all your latest updates here!",
                                  style: TextStyle(
                                    fontFamily: "SF",
                                    fontSize: 14.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            height: 30,
                            width: 20,
                            alignment: Alignment.center,
                            child: RawMaterialButton(
                              elevation: 2,
                              padding: const EdgeInsets.only(right: 4),
                              onPressed: () {
                                navLeft();
                              },
                              fillColor: Colors.red,
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.chevron_left,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 120,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 20, top: 15),
                            child: Text(
                              announcementDate,
                              style: const TextStyle(
                                fontFamily: "SFBold",
                              ),
                            ),
                            // color: Colors.pink,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 15),
                            // color: Colors.black,
                            height: 30,
                            width: 20,
                            child: RawMaterialButton(
                              elevation: 2,
                              onPressed: () {
                                navRight();
                              },
                              fillColor: Colors.red,
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.chevron_right,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(announcementsList[1].replaceAll("\n", "\n"))
                    ],
                  ),
                ),
                // weather widget
                Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  width: screenWidth * 0.9,
                  height: 350,
                  alignment: Alignment.center,
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  top: 16.0,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: maroon,
                                  borderRadius: homeCorners,
                                ),
                                child: Image.asset(
                                  "assets/weather.png",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                height: 30,
                                width: 200,
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  "Weather",
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
                                child: const Text(
                                  "The weather for this week.",
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
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 225,
                        alignment: Alignment.center,
                        // color: Colors.yellow,
                        child: weatherView(),
                      ),
                      Container(
                        width: screenWidth * 0.7,
                        height: 30,
                        margin: const EdgeInsets.only(top: 8),
                        child: OutlinedButton(
                            onPressed: () {
                              launchURL(weather);
                            },
                            child: Text(
                              "View More Details",
                              style: TextStyle(
                                fontFamily: "SFBold",
                                color: maroon,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                // school calendar
                Container(
                  margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  width: screenWidth * 0.9,
                  height: 530,
                  alignment: Alignment.center,
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  top: 16.0,
                                ),
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: maroon,
                                  borderRadius: homeCorners,
                                ),
                                child: Image.asset(
                                  "assets/calendar_1f4c5.png",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                height: 30,
                                width: 200,
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  "School Calendar",
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
                                child: const Text(
                                  "Latest events here!",
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
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 400,
                        alignment: Alignment.center,
                        child: yrdsbCalendarView(),
                      ),
                      Container(
                        width: screenWidth * 0.7,
                        height: 30,
                        margin: const EdgeInsets.only(top: 10),
                        child: OutlinedButton(
                            onPressed: () {
                              launchURL(uhsRedirect);
                            },
                            child: Text(
                              "Open in Browser",
                              style: TextStyle(
                                fontFamily: "SFBold",
                                color: maroon,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // home related functions
  void getTime() {
    now = DateTime.now();
    String time = (DateFormat.jm().format(now));
    setState(() {
      curTime = time;
    });
  }

  void getDate() {
    now = DateTime.now();
    String date = (DateFormat('EEEE MMMM d').format(now));
    // String aDate = (DateFormat('EE MMM dd').format(now));
    setState(() {
      curDate = date;
      announcementDate = dates[dateIndex];
      minutesTime = findTime(now);
    });
  }

  @override
  void initState() {
    initDates(now);
    curTime = DateTime.now().toString();
    curDate = DateTime.now().toString();
    announcementDate = DateTime.now().toString();
    minutesTime = findTime(now);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      getTime();
      getDate();
    });
    super.initState();
  }

  void navLeft() {
    if (dateIndex > 0) {
      dateIndex--;
    } else {}
  }

  void navRight() {
    if (dateIndex < 4) {
      dateIndex++;
    }
  }
}
