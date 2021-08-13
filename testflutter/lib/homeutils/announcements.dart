import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/homeutils/time.dart';
import 'package:testflutter/pages/home.dart';

import '../dorianchentesting.dart';
import '../firestore.dart';

bool leftDisable = false;
bool rightDisable = true;

class AnnouncementsCard extends StatefulWidget {
  const AnnouncementsCard({Key? key}) : super(key: key);

  @override
  _AnnouncementsCardState createState() => _AnnouncementsCardState();
}

class _AnnouncementsCardState extends State<AnnouncementsCard> {
  void getDate() {
    // String date = (DateFormat('EEEE MMMM d').format(now));
    setState(() {
      announcementDate = masterList[(dateIndex - 4).abs()].displayDate;
      currentAnnounce = masterList[(dateIndex - 4).abs()].announcement;
      // print(dateIndex);
    });
  }

  @override
  void initState() {
    announcementDate = DateTime.now().toString();
    // curTime = DateFormat.jm().format(now);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      getDate();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      width: screenWidth * 0.9,
      height: 300,
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
                  "assets/cheering-megaphone_1f4e3.png",
                  height: 35,
                  width: 35,
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 30,
                    width: 200,
                    child: const Text(
                      "Announcements",
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
                      "Get all your latest updates here!",
                      style: TextStyle(
                        fontFamily: "SF",
                        fontSize: 14.0,
                      ),
                    ),
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
                height: 30,
                width: 20,
                alignment: Alignment.center,
                child: MaterialButton(
                  elevation: 2,
                  padding: const EdgeInsets.only(right: 4),
                  onPressed: leftDisable ? null : navLeft,
                  color: Colors.red,
                  disabledColor: Colors.grey,
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
                  style: const TextStyle(
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
                child: MaterialButton(
                  elevation: 2,
                  onPressed: rightDisable ? null : navRight,
                  // fillColor: Colors.red,
                  color: Colors.red,
                  disabledColor: Colors.grey,
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
          Text(currentAnnounce),
        ],
      ),
    );
  }

  void navLeft() {
    if (dateIndex > 0) {
      dateIndex--;
      leftDisable = false;
    } else {
      leftDisable = true;
      rightDisable = false;
    }
  }

  void navRight() {
    if (dateIndex < 4) {
      dateIndex++;
      rightDisable = false;
    } else {
      rightDisable = true;
      leftDisable = false;
    }
  }
}
