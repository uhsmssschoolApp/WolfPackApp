import 'package:flutter/material.dart';
import 'package:testflutter/intro/pagefive.dart';
import 'package:testflutter/intro/pagefour.dart';
import 'package:testflutter/intro/pageone.dart';
import 'package:testflutter/intro/pagethree.dart';
import 'package:testflutter/intro/pagetwo.dart';

class SecondIntro extends StatelessWidget {
  const SecondIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final secondPageController = PageController(
      initialPage: 0
    );
    return Scaffold(
      body: PageView(
        controller: secondPageController,
        children: [
          PageThree(),
          PageFour(),
          PageFive(),
        ],
      ),
    );
  }
}
