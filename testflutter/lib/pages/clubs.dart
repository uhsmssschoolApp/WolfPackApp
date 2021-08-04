// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testflutter/nav.dart';
import '../constants/consts.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:testflutter/constants/icons.dart';

//firestore packages

import 'package:cloud_firestore/cloud_firestore.dart';
import '../appbar.dart';

class clubs extends StatefulWidget {
  const clubs({Key? key}) : super(key: key);

  //Firestore
  @override
  _clubsState createState() => _clubsState();
}

class _clubsState extends State<clubs> {
  final Stream<QuerySnapshot> dates =
      FirebaseFirestore.instance.collection('dates').snapshots();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Clubs"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TO VISIT TESTING SCAFFOLD
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/testingpage");
              },
              // ignore: prefer_const_constructors
              child: Text("Go to Testing Page"),
            ),
            // text that says today
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0),
              width: screenWidth * 0.9,
              height: 50,
              // ignore: prefer_const_constructors
              child: Text(
                "Today",
                style: const TextStyle(
                  fontFamily: "SFBold",
                  fontSize: 20.0,
                ),
              ),
            ),
            // container for club announcements
            Container(
              // padding: const EdgeInsets.only(left: 30),
              height: 250,
              width: screenWidth,
              alignment: Alignment.center,
              child: Container(
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: homeCorners,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 7,
                        offset: const Offset(0, 5)),
                  ],
                ),
                // the decoration of the red box and text
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16.0),
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: maroon,
                            borderRadius: homeCorners,
                          ),
                          child: Container(
                            child: Image.asset(
                              "assets/open-mailbox-with-raised-flag_1f4ec.png",
                              height: 35,
                              width: 35,
                            ),
                          ),
                        ),
                        // the two lines of text
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 30,
                              width: 200,
                              // ignore: prefer_const_constructors
                              child: Text(
                                "Club Announcements",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontFamily: "SFBold",
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.only(top: 6),
                              height: 15,
                              width: 200,
                              // ignore: prefer_const_constructors
                              child: Text(
                                "Club specific news!",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontFamily: "SF",
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // INSERT TEXT CHILD OR CONTAINER THAT HAS THE TEXT HERE UNDER THIS COMMENT
                  ],
                ),
              ),
            ),
            // calendar webview of current clubs
            Container(
              margin: topMargin,
              height: 250,
              width: screenWidth,
              alignment: Alignment.center,
              child: Container(
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: homeCorners,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 7,
                        offset: const Offset(0, 5)),
                  ],
                ),
                // the decoration of the red box and text
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16.0),
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: maroon,
                            borderRadius: homeCorners,
                          ),
                          child: Container(
                            child: Image.asset(
                              "assets/tear-off-calendar_1f4c6.png",
                              height: 35,
                              width: 35,
                            ),
                          ),
                        ),
                        // the two lines of text
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 30,
                              width: 200,
                              // ignore: prefer_const_constructors
                              child: Text(
                                "Club Scheduling",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontFamily: "SFBold",
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.only(top: 6),
                              height: 15,
                              width: 200,
                              // ignore: prefer_const_constructors
                              child: Text(
                                "See what's running today!",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontFamily: "SF",
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // insert webview widget here UNDER THIS COMMENT

                    // the outlined button (gets pushed down by the webview)
                    Container(
                      width: screenWidth * 0.7,
                      height: 30,
                      margin: const EdgeInsets.only(top: 8),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "View Calendar in Browser",
                            style: TextStyle(
                              fontFamily: "SFBold",
                              color: maroon,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            // text for resources
            Container(
              margin: const EdgeInsets.only(top: 24.0, left: 16.0),
              width: screenWidth * 0.9,
              height: 50,
              // ignore: prefer_const_constructors
              child: Text(
                "Resources",
                style: const TextStyle(
                  fontFamily: "SFBold",
                  fontSize: 20.0,
                ),
              ),
            ),
            // the club resources card
            // ignore: sized_box_for_whitespace
            Container(
              width: screenWidth * 0.90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: homeCorners,
                ),
                elevation: 5,
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    height: 60,
                    width: 35,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.bookmark_border_rounded,
                      size: 30,
                      color: maroon,
                    ),
                  ),
                  trailing: arrowRight,
                  isThreeLine: true,
                  title: Text(
                    "Club Resources",
                    style: linkTiles,
                  ),
                  subtitle: const Text(
                    "Startup, FAQ, Teacher Advisors and More!",
                    style: TextStyle(fontFamily: "SF"),
                  ),
                ),
              ),
            ),
            // list tile for club list
            // ignore: sized_box_for_whitespace
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: screenWidth * 0.90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: homeCorners,
                ),
                elevation: 5,
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.dashboard_outlined,
                      size: 30,
                      color: maroon,
                    ),
                  ),
                  trailing: arrowRight,
                  title: Text(
                    "Club List",
                    style: linkTiles,
                  ),
                  subtitle: const Text(
                    "List of all active clubs at UHS",
                    style: TextStyle(fontFamily: "SF"),
                  ),
                ),
              ),
            )
            // column in the scaffold, put extra widgets ABOVE THIS COMMENT
          ],
        ),
      ),
      // Container(
      //   margin: EdgeInsets.only(
      //       left: 16.0, right: 16.0, top: 16.0),
      //   alignment: Alignment.center,
      //   height: 50,
      //   width: 80,
      //   decoration: BoxDecoration(
      //     color: maroon,
      //     borderRadius: homeCorners,
      //   ),
      //   child: Container(
      //     padding: EdgeInsets.only(top: 16.0),
      //     child: StreamBuilder<QuerySnapshot>(
      //         stream: dates,
      //         builder: (BuildContext context,
      //             AsyncSnapshot<QuerySnapshot> snapshot) {
      //           if (snapshot.hasError) {
      //             return Text('Something went wrong.');
      //           }
      //           if (snapshot.connectionState ==
      //               ConnectionState.waiting) {
      //             return Text('Loading');
      //           }
      //           final data = snapshot.requireData;

      //           return ListView.builder(
      //               itemCount: data.size,
      //               itemBuilder: (context, index) {
      //                 return Text(data.docs[index]
      //                     ['announcements']);
      //               });
      //         }),
      //   ),
      // ),
    );
  }
}
