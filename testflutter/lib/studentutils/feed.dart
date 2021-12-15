import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/links.dart';
import 'package:webview_flutter/webview_flutter.dart';

class feed extends StatefulWidget {
  const feed({Key? key}) : super(key: key);

  @override
  _feedState createState() => _feedState();
}

class _feedState extends State<feed> {
  // int activePage = 0;
  String url = twitterURL;
  Completer<WebViewController> completer = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    // String darkURL() {
    //   if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
    //     return yrdsbDark;
    //   }
    //   return twitterURL;
    // }

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
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        completer.future.then(
                            (controller) => controller.loadUrl(twitterURL));
                      });
                    },
                    child: Text(
                      "@YRDSB",
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        fontFamily: "SFBold",
                        color: maroon,
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
                      completer.future
                          .then((controller) => controller.loadUrl(uhsURL));
                    });
                  },
                  child: Text(
                    "@UHSUpdates",
                    textScaleFactor: 1.0,
                    style: TextStyle(
                      fontFamily: "SFBold",
                      color: maroon,
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
          child: WebView(
            initialUrl: twitterURL,
            onWebViewCreated: (WebViewController controller) {
              try {
                completer.complete(controller);
              } on StateError catch (_) {}
            },
            javascriptMode: JavascriptMode.unrestricted,
            navigationDelegate: (navigation) {
              if (navigation.url.startsWith('https://uhsmssschoolapp') ||
                  !navigation.isForMainFrame) {
                return NavigationDecision.navigate;
              }
              launchURL(navigation.url);
              return NavigationDecision.prevent;
            },
          ),
        ),
      ],
    );
  }
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }
}
