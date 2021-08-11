import 'dart:async';

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
    // print(url);
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
                        completer.future.then(
                            (controller) => controller.loadUrl(twitterURL));
                      });
                    },
                    child: const Text(
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
                      completer.future
                          .then((controller) => controller.loadUrl(uhsURL));
                    });
                  },
                  child: const Text(
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
          child: WebView(
            initialUrl: url,
            onWebViewCreated: (WebViewController controller) {
              try {
                completer.complete(controller);
              } on StateError catch (_) {}
            },
            javascriptMode: JavascriptMode.unrestricted,
            navigationDelegate: (navigation) {
              if (navigation.url.startsWith('twitter/') ||
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
}
