import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/pages/links.dart';

class feedBack extends StatelessWidget {
  const feedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: mainAppBar("Feedback", true),
        body: Column(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.centerLeft,
              height: 110,
              // margin: topMargin,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: homeCorners,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 7,
                      offset: Offset(0, 5)),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 2),
                    alignment: Alignment.center,
                    child: const Text(
                      "Tech Form",
                      style: TextStyle(fontFamily: "SFBold", fontSize: 19),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    child: const Text(
                      "Bugs, tech support and feature requests.",
                      textScaleFactor: 1.0,
                      style: TextStyle(fontFamily: "SF"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    height: 35,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => maroon),
                        ),
                        onPressed: () {
                          launchURL("https://forms.gle/tTx3t6dtu12Lhjqj7");
                        },
                        child: const Text(
                          "Open Form in Browser",
                          style: TextStyle(
                              fontFamily: "SFBold",
                              fontSize: 12,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.centerLeft,
              height: 110,
              // margin: topMargin,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: homeCorners,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 7,
                      offset: Offset(0, 5)),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 2),
                    alignment: Alignment.center,
                    child: const Text(
                      "Song Suggestions",
                      style: TextStyle(fontFamily: "SFBold", fontSize: 19),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    child: const Text(
                      "Submit song requests.",
                      textScaleFactor: 1.0,
                      style: TextStyle(fontFamily: "SF"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    height: 35,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => maroon),
                        ),
                        onPressed: () {
                          // launchURL("https://forms.gle/tTx3t6dtu12Lhjqj7");
                        },
                        child: const Text(
                          "Open Form in Browser",
                          style: TextStyle(
                              fontFamily: "SFBold",
                              fontSize: 12,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.centerLeft,
              height: 110,
              // margin: topMargin,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: homeCorners,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 7,
                      offset: Offset(0, 5)),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 2),
                    alignment: Alignment.center,
                    child: const Text(
                      "USAC Contact",
                      style: TextStyle(fontFamily: "SFBold", fontSize: 19),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    child: const Text(
                      "Speak with USAC through a form.",
                      textScaleFactor: 1.0,
                      style: TextStyle(fontFamily: "SF"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    height: 35,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => maroon),
                        ),
                        onPressed: () {
                          // launchURL("https://forms.gle/tTx3t6dtu12Lhjqj7");
                        },
                        child: const Text(
                          "Open Form in Browser",
                          style: TextStyle(
                              fontFamily: "SFBold",
                              fontSize: 12,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
