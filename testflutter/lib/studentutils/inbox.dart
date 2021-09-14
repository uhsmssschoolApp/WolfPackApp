import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/links.dart';

// au and stem, parent bulletin, weekly newsletter, usac messages

class inbox extends StatefulWidget {
  const inbox({Key? key}) : super(key: key);

  @override
  _inboxState createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      // height: 500,
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 110,
            // margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).shadowColor,
                    blurRadius: 7,
                    offset: Offset(0, 5)),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 2),
                  alignment: Alignment.center,
                  child: const Text(
                    "School Newsletters",
                    style: TextStyle(fontFamily: "SFBold", fontSize: 19),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  child: const Text(
                    "The latest newsletter from the school.",
                    textScaleFactor: 1.0,
                    style: TextStyle(fontFamily: "SF"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  height: 35,
                  width: screenWidth * 0.8,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => maroon),
                      ),
                      onPressed: () {
                        launchURL(
                            "http://www.yrdsb.ca/schools/unionville.hs/NewsEvents/Pages/Newsletters-2020-2021.aspx");
                      },
                      child: const Text(
                        "View Latest Newsletter",
                        style: TextStyle(
                            fontFamily: "SFBold",
                            fontSize: 12,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            alignment: Alignment.centerLeft,
            height: 110,
            // margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).shadowColor,
                    blurRadius: 7,
                    offset: Offset(0, 5)),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 2),
                  alignment: Alignment.center,
                  child: const Text(
                    "Parent Bulletins",
                    style: TextStyle(fontFamily: "SFBold", fontSize: 19),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  child: const Text(
                    "The most recent updates for families!",
                    textScaleFactor: 1.0,
                    style: TextStyle(fontFamily: "SF"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  height: 35,
                  width: screenWidth * 0.8,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => maroon),
                      ),
                      onPressed: () {
                        launchURL(
                            "http://www.yrdsb.ca/schools/unionville.hs/NewsEvents/Pages/Weekly-Bulletins-2020-2021.aspx");
                      },
                      child: const Text(
                        "View Latest Bulletins",
                        style: TextStyle(
                            fontFamily: "SFBold",
                            fontSize: 12,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.only(top: 12),
          //   alignment: Alignment.centerLeft,
          //   height: 110,
          //   // margin: topMargin,
          //   width: screenWidth * 0.9,
          //   decoration: BoxDecoration(
          //     color: Theme.of(context).cardColor,
          //     borderRadius: homeCorners,
          //     boxShadow: [
          //       BoxShadow(
          //           color: Theme.of(context).shadowColor,
          //           blurRadius: 7,
          //           offset: Offset(0, 5)),
          //     ],
          //   ),
          //   child: Column(
          //     children: [
          //       Container(
          //         padding: const EdgeInsets.only(top: 12, bottom: 2),
          //         alignment: Alignment.center,
          //         child: const Text(
          //           "AU and STEM Updates",
          //           style: TextStyle(fontFamily: "SFBold", fontSize: 19),
          //         ),
          //       ),
          //       Container(
          //         alignment: Alignment.center,
          //         height: 20,
          //         child: const Text(
          //           "Latest news on the specialized programs of UHS",
          //           textScaleFactor: 1.0,
          //           style: TextStyle(fontFamily: "SF"),
          //         ),
          //       ),
          //       Container(
          //         padding: const EdgeInsets.only(top: 8),
          //         height: 35,
          //         width: screenWidth * 0.8,
          //         child: ElevatedButton(
          //             style: ButtonStyle(
          //               backgroundColor: MaterialStateProperty.resolveWith(
          //                   (states) => maroon),
          //             ),
          //             onPressed: () {},
          //             child: const Text(
          //               "View Updates",
          //               style: TextStyle(
          //                   fontFamily: "SFBold",
          //                   fontSize: 12,
          //                   color: Colors.white),
          //             )),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            alignment: Alignment.centerLeft,
            height: 110,
            // margin: topMargin,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: homeCorners,
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).shadowColor,
                    blurRadius: 7,
                    offset: Offset(0, 5)),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 2),
                  alignment: Alignment.center,
                  child: const Text(
                    "USAC Messages",
                    style: TextStyle(fontFamily: "SFBold", fontSize: 19),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  child: const Text(
                    "Messages from your student council",
                    textScaleFactor: 1.0,
                    style: TextStyle(fontFamily: "SF"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  height: 35,
                  width: screenWidth * 0.8,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => maroon),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/usacmessages");
                      },
                      child: const Text(
                        "View Message Feed",
                        style: TextStyle(
                            fontFamily: "SFBold",
                            fontSize: 12,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   height: 100,
          //   margin: topMargin,
          //   width: screenWidth * 0.9,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: homeCorners,
          //     boxShadow: [
          //       BoxShadow(
          //           color: Colors.grey, blurRadius: 7, offset: Offset(0, 5)),
          //     ],
          //   ),
          //   child: ListTile(
          //     title: Text(
          //       "Admin and Office Messages",
          //       style: subTitle,
          //     ),
          //     trailing: arrowRight,
          //   ),
          // ),
        ],
      ),
    );
  }
}
