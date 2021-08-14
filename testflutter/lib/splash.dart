import 'package:flutter/material.dart';
import 'package:testflutter/main.dart';
import 'package:testflutter/pages/home.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    //_navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'splash screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
