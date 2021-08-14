import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/firestore.dart';
import 'package:testflutter/homeutils/weather.dart';
import 'package:testflutter/pages/links.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({Key? key}) : super(key: key);

  @override
  _WeatherCardState createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      width: screenWidth * 0.9,
      height: 350,
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
                      "assets/weather.png",
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
                      "Weather",
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
                      "The weather for this week.",
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
              height: 225,
              alignment: Alignment.center,
              // color: Colors.yellow,
              child: weatherView()),
          Container(
            width: screenWidth * 0.7,
            height: 30,
            margin: const EdgeInsets.only(top: 8),
            child: OutlinedButton(
                onPressed: () {
                  launchURL(weather);
                },
                child: Text(
                  "View More Details",
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
