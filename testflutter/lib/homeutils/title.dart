import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/homeutils/time.dart';
import 'package:testflutter/pages/home.dart';

Widget titleRow(BuildContext context) {
  // double screenWidth = MediaQuery.of(context).size.width;
  // print(screenWidth);
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          margin: const EdgeInsets.only(top: 16),
          height: 120,
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: maroon,
                borderRadius: homeCorners,
              ),
              child: Container(
                  height: 70,
                  width: 70,
                  child: Image.asset("assets/app_logo_outline_2.png")),
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          margin: const EdgeInsets.only(top: 16.0),
          height: 120,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    curDate,
                    textScaleFactor: 1.0,
                    style: TextStyle(
                        fontSize: 16.0, color: maroon, fontFamily: "SFBold"),
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
                    textScaleFactor: 1.0,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
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
  );
}
