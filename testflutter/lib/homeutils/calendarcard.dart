import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/homeutils/yrdsbcalendar.dart';
import 'package:testflutter/pages/links.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  _CalendarCardState createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
    );
    
  }
}
