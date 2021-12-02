import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/home.dart';

List<String> specialThanksNames = [
  "Stephen",
  "Mrs. Cheong",
  "Mr. Anandarajan",
  "Mrs. Faulkner",
  "Mr. Belmonte",
  "USAC",
];

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: Container(
                  // color: Colors.blue,
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    "Thanks for making wolfpackapp possible!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "SFBold",
                        fontSize: 18,
                        color: Colors.black),
                  )),
              flex: 3),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              // color: Colors.lightBlue,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: specialThanksNames.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(6),
                      child: Text(
                        specialThanksNames[index],
                        style: const TextStyle(
                            fontFamily: "SFBold", color: Colors.grey),
                      ),
                    );
                  }),
            ),
            flex: 6,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16),
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                        (route) => false);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontFamily: "SFBold", color: maroon),
                  )),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }
}
