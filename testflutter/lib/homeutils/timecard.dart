import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/firestore.dart';
import 'package:testflutter/homeutils/time.dart';
import 'package:testflutter/pages/home.dart';

String displayCurrentRotation = masterList.first.rotation;

class timeCard extends StatefulWidget {
  const timeCard({Key? key}) : super(key: key);

  @override
  _timeCardState createState() => _timeCardState();
}

class _timeCardState extends State<timeCard> {
  void getTime() {
    String time = (DateFormat.jm().format(now));
    if (mounted) {
      setState(() {
        curTime = time;
        displayCurrentRotation = masterList.first.rotation;
      });
    }
  }

  @override
  void initState() {
    curTime = DateFormat.jm().format(now);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      getTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                          color: maroon,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Text(
                        curTime,
                        textScaleFactor: 1.0,
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
                  margin: EdgeInsets.only(left: screenWidth * 0.075, top: 8),
                  alignment: Alignment.topLeft,
                  child: Text(
                    displayCurrentRotation,
                    textScaleFactor: 1.0,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontFamily: "SFBold",
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.075, top: 8),
                  alignment: Alignment.topLeft,
                  child: Text(
                    periodNumber(findPeriod(minutesTime)),
                    textScaleFactor: 1.0,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: "SFBold",
                    ),
                  ),
                ),
              ),
              Container(
                height: 10.0,
                width: screenWidth * 0.75,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Container(
                  height: 10.0,
                  width: periodProgress(
                      minutesTime, findPeriod(minutesTime), screenWidth * 0.75),
                  decoration: BoxDecoration(
                    color: maroon,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.075, top: 8),
                  alignment: Alignment.topLeft,
                  child: Text(
                    timeStamps(findPeriod(minutesTime)),
                    textScaleFactor: 1.0,
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
    );
  }
}
