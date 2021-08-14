import 'package:flutter/material.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/firestore.dart';

class usacFeed extends StatefulWidget {
  const usacFeed({Key? key}) : super(key: key);

  @override
  _usacFeedState createState() => _usacFeedState();
}

class _usacFeedState extends State<usacFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("USAC Messages"),
      body: ListView.builder(
        // reverse: true,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(masterStreamList[index].title),
                ),
              ],
            ),
          );
        },
        itemCount: masterStreamList.length,
      ),
    );
  }
}
