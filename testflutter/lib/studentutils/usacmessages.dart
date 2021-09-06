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
    // please check this function dorian
    Future<void> getData() async {
      await fillStream();
      setState(() {});
    }

    return Scaffold(
      appBar: mainAppBar("USAC Messages",true),
      body: RefreshIndicator(
        onRefresh: getData,
        child: ListView.builder(
          // reverse: true,
          itemBuilder: (context, index) {
            if (masterStreamList.isEmpty) {
              return const Center(
                  child: Text("There was a problem loading the stream :("));
            }
            String bodyText =
                masterStreamList[index].body.replaceAll("|n", "\n");
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
                        textScaleFactor: 1.0,
                        style:
                            const TextStyle(fontSize: 18, fontFamily: "SFBold"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(top: 4),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        masterStreamList[index].date,
                        textScaleFactor: 1.0,
                        style: const TextStyle(fontFamily: "SF", fontSize: 12),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: const EdgeInsets.only(top: 6),
                      alignment: Alignment.topLeft,
                      child: Text(
                        bodyText,
                        textScaleFactor: 1.0,
                        maxLines: 3,
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
                              showAlert(context, bodyText);
                            },
                            child: Text(
                              "View More",
                              textScaleFactor: 1.0,
                              style: TextStyle(
                                  color: maroon, fontFamily: "SFBold"),
                            )),
                      ))
                ],
              ),
            );
          },
          itemCount: masterStreamList.length,
        ),
      ),
    );
  }
}
