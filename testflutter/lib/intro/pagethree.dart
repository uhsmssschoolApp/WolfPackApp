import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 600,
            color: Colors.black,
          ),
          Container(
            height: 700,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
