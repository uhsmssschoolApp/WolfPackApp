import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testflutter/nav.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'consts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  String curTime = "";
  String curDate = "";
  String announcementDate = "";

  // convert time later ?
  double periodProgress(double curElapsed, int curPeriod) {
    if (curPeriod < 6) {
      return (curElapsed / 120) * 300;
    }
    return 300.0;
  }

  void announcements() {
    // write on tap later?
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // DateTime now = DateTime.now();
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
          "Home",
          style: TextStyle(
            color: grey,
            fontSize: 20.0,
            fontFamily: "SFBold",
          ),
        ),
        centerTitle: true,
      ),
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
                    // color: Colors.blue,
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
                    margin: const EdgeInsets.only(left: 16.0, top: 16.0),
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
                                  // fontWeight: FontWeight.bold,
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
                              "Good Morning!",
                              style: TextStyle(
                                fontSize: 30.0,
                                // fontWeight: FontWeight.w600,
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
              // color: Colors.red,
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
                                  // fontWeight: FontWeight.w800,
                                  fontFamily: "SFBold",
                                  color: Colors.white,
                                  // shadows: <Shadow>[
                                  //   Shadow(
                                  //     offset: Offset(2.0, 2.0),
                                  //     blurRadius: 10.0,
                                  //     color: Colors.black,
                                  //   ),
                                  // ],
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
                            "Period",
                            style: TextStyle(
                              color: const Color(0xFF656565),
                              fontSize: 16.0,
                              fontFamily: "SFBold",
                            ),
                          ),
                          // color: Colors.yellow,
                        ),
                      ),
                      Container(
                        // flex: 1,
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
                          width: 150,
                          // color: Colors.red,
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
                            "8:30-9:45",
                            style: TextStyle(
                              fontFamily: "SF",
                              fontSize: 14.0,
                              color: grey,
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   margin: const EdgeInsets.only(top: 16.0),
                      //   width: screenWidth * 0.9,
                      //   height: 100,
                      //   color: Colors.black,
                      // ),
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
                  InkWell(
                    // the ANNOUNCEMENTS box
                    onTap: () {
                      // write code later
                      // print("hi");
                    },
                    child: Container(
                      // wrap in gesture thing to add on tap
                      margin: EdgeInsets.only(top: 12.0),
                      width: screenWidth * 0.9,
                      height: 100,
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
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16.0, right: 16.0),
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
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        "Announcements",
                                        style: TextStyle(
                                          fontFamily: "SFBold",
                                          color: const Color(0xFF252525),
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 10.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Get all your latest updates here!",
                                        style: TextStyle(
                                          fontFamily: "SF",
                                          color: const Color(0xFF858585),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 24.0),
                                    alignment: Alignment.center,
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: maroon,
                                    ),
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                        fontFamily: "SFBold",
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    margin: const EdgeInsets.only(
                                        top: 16.0, right: 20.0),
                                    height: 30,
                                    width: 50,
                                    // color: Colors.black,
                                    child: Text(
                                      announcementDate,
                                      style: TextStyle(
                                        fontFamily: "SF",
                                        fontSize: 12.0,
                                        color: const Color(0xFF858585),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    width: screenWidth * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: homeCorners,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    width: screenWidth * 0.9,
                    height: 450,
                    alignment: Alignment.center,
                    child: Container(
                      height: 400,
                      // color: Colors.red,
                      child: WebView(
                        initialUrl:
                            "https://sarinali.github.io/webview_flutter/",
                        javascriptMode: JavascriptMode.unrestricted,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: homeCorners,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getTime() {
    DateTime now = DateTime.now();
    String time = (DateFormat.jm().format(now));
    setState(() {
      curTime = time;
    });
  }

  void getDate() {
    DateTime now = DateTime.now();
    String date = (DateFormat('EEEE MMMM d').format(now));
    String aDate = (DateFormat('M-d').format(now));
    setState(() {
      curDate = date;
      announcementDate = aDate;
    });
  }

  @override
  void initState() {
    curTime = DateTime.now().toString();
    curDate = DateTime.now().toString();
    announcementDate = DateTime.now().toString();
    Timer.periodic(Duration(seconds: 1), (timer) {
      getTime();
      getDate();
    });
    super.initState();
  }
}
