import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

List<String> announcementsList = [];
final Stream<QuerySnapshot> dbref =
      FirebaseFirestore.instance.collection('dates').snapshots();

Future<void> fillList() async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('dates').get();

  for (var doc in querySnapshot.docs) {
    announcementsList.add(doc["Announcements"]);
  }
}