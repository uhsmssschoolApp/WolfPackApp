import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

List<String> displayAnnouncementList = [];
List<String> displayDateList = [];
List<String> displayClubAnnouncementList = [];
List<int> displayTimeStampList = [];
List<store> test = [];

final Stream<QuerySnapshot> dbref =
    FirebaseFirestore.instance.collection('dates').snapshots();

Future<void> fillList() async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('dates').get();

  for (var doc in querySnapshot.docs) {
    displayAnnouncementList.add(doc["displayAnnouncement"]);
    displayClubAnnouncementList.add(doc["displayClubAnnouncement"]);
    displayDateList.add(doc["displayDate"]);
    displayTimeStampList.add(doc["displayTimeStamp"]);
  }

  store newThing = new store(
      stamp: 1,
      displayDate: "hello",
      announcement: "bro",
      clubAnnouncement: "ok");

  test.add(newThing);
  print(test[0].announcement);
}

class store {
  late int stamp;
  late String displayDate;
  late String announcement;
  late String clubAnnouncement;

  store({
    this.stamp = 0,
    this.displayDate = "displayDate",
    this.announcement = "announcement",
    this.clubAnnouncement = "clubAnnouncement",
  });
}
