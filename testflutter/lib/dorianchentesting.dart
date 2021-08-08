import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
              return const Text(
                'there is an error',
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('loading...');
            }
            final data = snapshot.requireData;
            return ListView.builder(
                itemCount: data.size,
                itemBuilder: (context, index) {
                  return Text('soemthing');
                });
          },
        )));
  }
}
