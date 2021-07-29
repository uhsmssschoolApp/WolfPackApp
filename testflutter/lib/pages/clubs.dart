import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testflutter/nav.dart';
import '../constants/consts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:testflutter/constants/icons.dart';

import '../appbar.dart';

class clubs extends StatelessWidget {
  const clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Clubs"),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 350,
                      child: Center(
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: 300,
                          width: screenWidth * 0.9,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: homeCorners,
                            boxShadow: [
                              BoxShadow(
                                  color: Theme.of(context).shadowColor,
                                  blurRadius: 7,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Text(
                              "Today's Clubs",
                              style: TextStyle(
                                fontFamily: "SFBold",
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
                  child: ExpansionTile(
                    title: Text('Club Resources'),
                    children: <Widget>[
                      Text('How to Start a Club'),
                      Text('List of teacher advisors'),
                      Text('Pictures of dorian'),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
                  child: ExpansionTile(
                    title: Text('Clubs List 2'),
                    children: <Widget>[
                      Text('Club 1'),
                      Text('Club 2'),
                      Text('Club '),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
