import 'package:flutter/material.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> announcementsList = [];
Future<void> fillList() async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('dates').get();

  for (var doc in querySnapshot.docs) {
    announcementsList.add(doc["Announcements"]);
  }
}

class dorianTesting extends StatefulWidget {
  const dorianTesting({Key? key}) : super(key: key);

  @override
  _dorianTestingState createState() => _dorianTestingState();
}

class _dorianTestingState extends State<dorianTesting> {
  final Stream<QuerySnapshot> dates =
      FirebaseFirestore.instance.collection('dates').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar("Testing Page"),
        body: Center(
            child: StreamBuilder<QuerySnapshot>(
          stream: dates,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text(
                snapshot.error.toString(),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('loading...');
            }
            return const Text(
              "0",
            );
          },
        )));
  }
}
