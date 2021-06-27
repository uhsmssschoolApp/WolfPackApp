import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'consts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  String curTime = "6:00 PM";
  String curDate = "";

  // convert time later ?
  double periodProgress(double curElapsed, int curPeriod) {
    if (curPeriod < 6) {
      return (curElapsed / 120) * 300;
    }
    return 300.0;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // DateTime now = DateTime.now();
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
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
                              "date",
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
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 10.0,
                                      color: Colors.black,
                                    ),
                                  ],
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
              // color: Colors.black,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    width: screenWidth * 0.9,
                    height: 100,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    width: screenWidth * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    width: screenWidth * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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

  // void getTime() {
  //   DateTime now = DateTime.now();
  //   String time = DateFormat.jm(now).toString();
  //   setState(() {
  //     curTime = time;
  //   });
  // }

  // @override
  // void initState() {
  //   curTime = DateFormat.jm(DateTime.now()).toString();
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     getTime();
  //   });
  //   super.initState();
  // }
}
