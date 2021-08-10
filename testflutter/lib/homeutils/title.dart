import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/homeutils/time.dart';
import 'package:testflutter/pages/home.dart';

Widget titleRow() {
  return Row(
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
              child: const Image(
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
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 30.0,
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
