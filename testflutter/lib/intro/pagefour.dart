// import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/home.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Notifications",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "SFBold", fontSize: 18, color: Colors.black),
              ),
              Container(
                child: Image.asset("assets/IMG_7229.png"),
                margin: const EdgeInsets.all(16),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: const Text(
                  "Keep notifications on for updates when new announcements, messages or information is posted. Turn it off in settings if you don't want to recieve anything! (We try to limit our notifications to 1 or 2 a day 😊)",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: "SF", fontSize: 14, color: Colors.black),
                ),
              )
            ],
          ),
        ));
  }
}
