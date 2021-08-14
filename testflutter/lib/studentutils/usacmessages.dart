import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/firestore.dart';
import 'package:testflutter/studentutils/alertdialog.dart';

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
          if (masterStreamList.isEmpty) {
            return const Center(
                child: Text("There was a problem loading the stream :("));
          }
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).dividerColor)),
            height: 150,
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      masterStreamList[index].title,
                      style: TextStyle(fontSize: 18, fontFamily: "SFBold"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: const EdgeInsets.only(top: 12),
                    alignment: Alignment.topLeft,
                    child: Text(
                      masterStreamList[index].body,
                      // "hi\nhi\nhi\nhi\nhi",
                      maxLines: 4,
                      style: const TextStyle(fontFamily: "SF"),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {
                            showAlert(context, masterStreamList[index].body);
                          },
                          child: Text(
                            "View More",
                            style:
                                TextStyle(color: maroon, fontFamily: "SFBold"),
                          )),
                    ))
                // Container(
                //   alignment: Alignment.bottomRight,
                //   child: TextButton(onPressed: () {}, child: Text("hi")),
                // )
              ],
            ),
          );
        },
        itemCount: masterStreamList.length,
      ),
    );
  }
}
