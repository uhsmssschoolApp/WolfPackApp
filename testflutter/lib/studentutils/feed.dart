import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
// import 'package:testflutter/pages/student.dart';
import 'package:webview_flutter/webview_flutter.dart';

// List<String> urlList = [
//   twitterURL,
//   uhsURL,
// ];

class feed extends StatefulWidget {
  const feed({Key? key}) : super(key: key);

  @override
  _feedState createState() => _feedState();
}

class _feedState extends State<feed> {
  // int activePage = 0;
  String url = twitterURL;

  @override
  Widget build(BuildContext context) {
    WebView feedDisplay = WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
    // print("Rebuilt");
    return Column(
      children: [
        Container(
          height: 40,
          // color: Colors.black,
          child: Row(
            children: [
              Container(
                height: 30,
                width: 90,
                // color: Colors.black,
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        // activePage = 0;
                        url = twitterURL;
                      });
                    },
                    child: Text(
                      "@YRDSB",
                      style: TextStyle(
                        fontFamily: "SFBold",
                        color: Colors.indigo,
                      ),
                    )),
                margin: const EdgeInsets.only(left: 8),
              ),
              Container(
                height: 30,
                width: 140,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      // activePage = 1;
                      url = uhsURL;
                      // print("Displaying uhs");
                    });
                  },
                  child: Text(
                    "@UHSUpdates",
                    style: TextStyle(
                      fontFamily: "SFBold",
                      color: Colors.indigo,
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(left: 8),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child:feedDisplay,
        ),
      ],
    );
  }
}
