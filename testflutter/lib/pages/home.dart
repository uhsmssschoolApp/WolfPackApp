import 'dart:async';
// import 'dart:html';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testflutter/appbar.dart';
import 'package:testflutter/connectivity.dart';
import 'package:testflutter/homeutils/expand.dart';
import 'package:testflutter/homeutils/yrdsbcalendar.dart';
import 'package:testflutter/nav.dart';
import 'package:testflutter/homeutils/time.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../constants/consts.dart';
import 'package:testflutter/homeutils/weather.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  String curTime = "";
  String curDate = "";
  String announcementDate = "";
  // bool cond = false;
  int minutesTime = 0;
  DateTime now = DateTime.now();
  // int curPeriod = 0;

  void announcements() {
    // write on tap later?
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Home"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: homeMargin,
                    height: 120,
                    child: Center(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: maroon,
                          borderRadius: homeCorners,
                        ),
                        child: Image(
                          image: AssetImage("assets/wave.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(left: 6.0, top: 16.0),
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              curDate,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: maroon,
                                  fontFamily: "SFBold"),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: EdgeInsets.only(top: 8.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              greetingMessage(minutesTime),
                              style: TextStyle(
                                fontSize: 30.0,
                                color: const Color(0xFF404040),
                                fontFamily: "SFBold",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              width: screenWidth,
              height: 250,
              child: Center(
                child: Container(
                  width: screenWidth * 0.9,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: homeCorners,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7,
                          offset: Offset(0, 5))
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(top: 16.0),
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
                                style: TextStyle(
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
                          // color: Colors.orange,
                          margin: hometileMargin,
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Current Rotation",
                            style: TextStyle(
                              color: const Color(0xFF252525),
                              // fontWeight: FontWeight.w600,
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
                            style: TextStyle(
                              color: const Color(0xFF656565),
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
                            style: TextStyle(
                              fontFamily: "SF",
                              fontSize: 14.0,
                              color: grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32.0, left: 16.0),
              width: screenWidth * 0.9,
              height: 50,
              child: Text(
                "More",
                style: TextStyle(
                    fontFamily: "SFBold", fontSize: 20.0, color: grey),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    // wrap in gesture thing to add on tap
                    margin: EdgeInsets.only(top: 12.0),
                    width: screenWidth * 0.9,
                    height: 300,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: homeCorners,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            offset: Offset(0, 5)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 16.0),
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: maroon,
                                borderRadius: homeCorners,
                              ),
                              child: Container(
                                child: Image.asset(
                                  "assets/cheering-megaphone_1f4e3.png",
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  height: 30,
                                  width: 200,
                                  child: Text(
                                    "Announcements",
                                    style: TextStyle(
                                      fontFamily: "SFBold",
                                      color: const Color(0xFF252525),
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  // color: Colors.black,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  margin: const EdgeInsets.only(top: 6),
                                  height: 15,
                                  width: 200,
                                  child: Text(
                                    "Get all your latest updates here!",
                                    style: TextStyle(
                                      fontFamily: "SF",
                                      color: const Color(0xFF858585),
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  // color: Colors.pink,
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
                              // color: Colors.black,
                              height: 30,
                              width: 20,
                              alignment: Alignment.center,
                              child: RawMaterialButton(
                                elevation: 2,
                                // padding: const EdgeInsets.only(right: 4),
                                onPressed: () {},
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
                                style: TextStyle(
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
                                onPressed: () {},
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
                        expandTile(context),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    width: screenWidth * 0.9,
                    height: 275,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: homeCorners,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            offset: Offset(0, 5)),
                      ],
                    ),
                    child: Container(
                      child: weatherView(),
                      height: 220,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    width: screenWidth * 0.9,
                    height: 450,
                    alignment: Alignment.center,
                    child: Container(
                      height: 400,
                      child: yrdsbCalendarView(),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: homeCorners,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            offset: Offset(0, 5)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("pressed");
                    },
                    child: Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 12.0),
                        width: screenWidth * 0.9,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: homeCorners,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 7,
                                offset: Offset(0, 5)),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 16.0),
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: maroon,
                                borderRadius: homeCorners,
                              ),
                              child: Container(
                                child: Image.asset(
                                  "assets/hand.png",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ),
                          ],
                          ),
                        ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget homeCheck() {
  //   // if true display the calendar webview
  //   if (cond) {
  //     return yrdsbCalendar();
  //     // if false display no internet container
  //   } else {
  //     return noInternet();
  //   }
  // }

  Widget noInternet() {
    return Center(
      child: Container(
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text(
          "No Connection!",
          style: TextStyle(
            fontFamily: "SFBold",
            fontSize: 30,
          ),
        ),
      ),
    );
  }

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
    String aDate = (DateFormat('EE MMM dd').format(now));
    setState(() {
      curDate = date;
      announcementDate = aDate;
      minutesTime = findTime(now);
    });
  }

  @override
  void initState() {
    curTime = DateTime.now().toString();
    curDate = DateTime.now().toString();
    announcementDate = DateTime.now().toString();
    minutesTime = findTime(now);
    Timer.periodic(Duration(seconds: 1), (timer) {
      getTime();
      getDate();
    });
    super.initState();
  }

  // void checkInternet() async {
  //   var connectivityResult = await (Connectivity().checkConnectivity());
  //   print(connectivityResult.toString());
  //   if (connectivityResult == ConnectivityResult.none) {
  //     cond = false;
  //     // print("yes we are conneccted");
  //     // return Future<bool>.value(false);
  //   } else {
  //     cond = true;
  //     // return Future<bool>.value(true);
  //   }
  // }
}
