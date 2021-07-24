import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';

class inbox extends StatefulWidget {
  const inbox({Key? key}) : super(key: key);

  @override
  _inboxState createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      // height: 500,
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 100,
            // margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 7, offset: Offset(0, 5)),
              ],
            ),
          ),
          Container(
            height: 100,
            margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 7, offset: Offset(0, 5)),
              ],
            ),
          ),
          Container(
            height: 100,
            margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 7, offset: Offset(0, 5)),
              ],
            ),
          ),
          Container(
            height: 100,
            margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 7, offset: Offset(0, 5)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
