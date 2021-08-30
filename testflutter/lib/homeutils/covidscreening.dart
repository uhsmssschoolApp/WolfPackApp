import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';

// ignore: camel_case_types
class covidScreening extends StatefulWidget {
  const covidScreening({Key? key}) : super(key: key);

  @override
  _covidScreeningState createState() => _covidScreeningState();
}

// ignore: camel_case_types
class _covidScreeningState extends State<covidScreening> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
                  margin:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
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
                      child: Text(
                        "COVID Screening Form",
                        textScaleFactor: 1.0,
                        style: TextStyle(
                          fontFamily: "SFBold",
                          fontSize: screenWidth * 0.04,
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
                        textScaleFactor: 1.0,
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
                    textScaleFactor: 1.0,
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
    );
  }
}
