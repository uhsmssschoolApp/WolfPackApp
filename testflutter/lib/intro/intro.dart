import 'package:flutter/material.dart';
import 'package:testflutter/intro/pageone.dart';
import 'package:testflutter/intro/pagetwo.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController(
      initialPage: 0
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageViewController,
        children: [
          pageOne(),
          const PageTwo(),
        ],
      ),
    );
  }
}
