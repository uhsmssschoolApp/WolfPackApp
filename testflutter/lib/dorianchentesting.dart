import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class dorianTesting extends StatefulWidget {
  const dorianTesting({Key? key}) : super(key: key);

  @override
  _dorianTestingState createState() => _dorianTestingState();
}

class _dorianTestingState extends State<dorianTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Testing Page"),
      body: Center(
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("dates").snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              // if (!snapshot.hasData) {
              //   return const Text(
              //     "no data",
              //   );
              // }
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView(
                    children: snapshot.data!.docs.map((document) {
                  return Container(
                    child: Center(child: Text(document['Announcements'])),
                  );
                }).toList());
              }
              return const Text("loading");
            }),
      ),
    );
  }
}
