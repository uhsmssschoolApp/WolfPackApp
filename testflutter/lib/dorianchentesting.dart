import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';

class dorianTesting extends StatefulWidget {
  const dorianTesting({ Key? key }) : super(key: key);

  @override
  _dorianTestingState createState() => _dorianTestingState();
}

class _dorianTestingState extends State<dorianTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Testing Page"),
    );
  }
}