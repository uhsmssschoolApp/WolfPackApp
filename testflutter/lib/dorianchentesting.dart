import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference =
    FirebaseFirestore.instance.collection("dates").snapshots();

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
            stream: databaseReference,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return Text(data["announcements"]);
              });
            }),
      ),
    );
  }

  // @override
  // void initState() {

  //   super.initState();
  // }

}
