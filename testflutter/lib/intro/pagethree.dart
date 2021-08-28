import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            alignment: Alignment.center,
            child: Image.asset("assets/instructions.png"),
          ),
        ],
      )),
    );
  }
}
