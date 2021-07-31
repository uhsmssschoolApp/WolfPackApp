import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';

class usacFeed extends StatefulWidget {
  const usacFeed({ Key? key }) : super(key: key);

  @override
  _usacFeedState createState() => _usacFeedState();
}

class _usacFeedState extends State<usacFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("USAC Messages"),
    );
  }
}