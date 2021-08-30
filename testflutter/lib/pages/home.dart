import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/firestore.dart';
import 'package:testflutter/homeutils/announcements.dart';
import 'package:testflutter/homeutils/calendarcard.dart';
import 'package:testflutter/homeutils/covidscreening.dart';
import 'package:testflutter/homeutils/timecard.dart';
import 'package:testflutter/homeutils/title.dart';
import 'package:testflutter/homeutils/weathercard.dart';
import 'package:testflutter/constructors/nav.dart';
import 'package:testflutter/homeutils/time.dart';

int minutesTime = 0;
String curDate = "";
double globalWidth = 0.0;
String curTime = "";
DateTime now = DateTime.now();
String announcementDate = "";
String currentAnnounce = "";
int dateIndex = 4;

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// bool test = true;

class _HomeState extends State<home> {
  Future<void> getData() async {
    await fillList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    globalWidth = screenWidth;
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Home"),
      body: RefreshIndicator(
        onRefresh: getData,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              titleRow(context),
              // timecard
              const timeCard(),
              // container for more text
              Container(
                margin: const EdgeInsets.only(top: 32.0, left: 16.0),
                width: screenWidth * 0.9,
                height: 50,
                child: const Text(
                  "More",
                  style: TextStyle(
                    fontFamily: "SFBold",
                    fontSize: 20.0,
                  ),
                ),
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // covid screening form widget
                  const covidScreening(),
                  // announcements widget
                  const AnnouncementsCard(),
                  // weather widget
                  const WeatherCard(),
                  // school calendar
                  const CalendarCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // home related functions

  void getDate() {
    now = DateTime.now();
    String date = (DateFormat('EEEE MMMM d').format(now));
    setState(() {
      curDate = date;
      minutesTime = findTime(now);
    });
  }

  @override
  void initState() {
    initDates(now);
    curDate = DateFormat('EEEE MMMM d').format(now);
    minutesTime = findTime(now);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      getDate();
    });
    super.initState();
  }
}
