import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';

class feedBack extends StatelessWidget {
  const feedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Feedback"),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 16.0, left: 16.0),
            height: 50,
            // ignore: prefer_const_constructors
            child: Text(
              "We Want to Hear From You!",
              style: const TextStyle(
                fontFamily: "SFBold",
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: const Text(
              "Do you have ideas you would like to see implemented in the app or at school?\n\n Check out this feedback form for tech suggestions or to speak directly with USAC!",
              style: TextStyle(fontFamily: "SF"),
            ),
          )
        ],
      ),
    );
  }
}
