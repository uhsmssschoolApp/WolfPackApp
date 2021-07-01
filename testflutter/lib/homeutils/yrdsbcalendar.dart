import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget yrdsbCalendarView() {
  return WebView(
    initialUrl: "https://sarinali.github.io/webview_flutter/",
    javascriptMode: JavascriptMode.unrestricted,
    
  );
}