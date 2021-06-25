import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'consts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  String curTime = "pee";
  String curDate = "";

  @override
  Widget build(BuildContext context) {
    // DateTime now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(
            color: Colors.black,
            height: 0.4,
          ),
          preferredSize: Size.fromHeight(4.0),
        ),
        backgroundColor: Color(0xFFeeeeee),
        title: Text(
          "Home",
          style: TextStyle(
            color: grey,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: homeMargin,
                    height: 120,
                    // color: Colors.blue,
                    child: Center(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: maroon,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Image(
                          image: AssetImage("assets/wave.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(left: 16.0, top: 16.0),
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "hi",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: maroon,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: EdgeInsets.only(top: 8.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Good Morning!",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF404040),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              width: MediaQuery.of(context).size.width,
              height: 300,
              // color: Colors.red,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(top: 16.0),
                          child: Center(
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: maroon,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              child: Text(
                                curTime,
                                style: TextStyle(
                                  fontSize: 48.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 10.0,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            // color: Colors.orange,
                            ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            // color: Colors.yellow,
                            ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            // color: Colors.green,
                            ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                            // color: Colors.blue,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void getTime() {
  //   DateTime now = DateTime.now();
  //   String time = DateFormat.jm(now).toString();
  //   setState(() {
  //     curTime = time;
  //   });
  // }

  // @override
  // void initState() {
  //   curTime = DateFormat.jm(DateTime.now()).toString();
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     getTime();
  //   });
  //   super.initState();
  // }
}
