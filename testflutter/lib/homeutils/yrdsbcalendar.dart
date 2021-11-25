import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget yrdsbCalendarView() {
  return const WebView(
    initialUrl: "https://uhsmssschoolapp.github.io/uhs_school_calendar/",
    javascriptMode: JavascriptMode.unrestricted,
    
  );
}