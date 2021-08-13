//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

List<String> displayAnnouncementList = [];
List<String> displayDateList = [];
List<String> displayClubAnnouncementList = [];
List<int> displayTimeStampList = [];
List<store> masterList = [];

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

  for (int x = 0; x < displayAnnouncementList.length; x++) {
    store newThing = store(
        stamp: displayTimeStampList[x],
        displayDate: displayDateList[x],
        announcement: displayAnnouncementList[x],
        clubAnnouncement: displayClubAnnouncementList[x]);

    masterList.add(newThing);
  }

  masterList.sort();

  print(masterList[0].announcement);
}

class store implements Comparable<store> {
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

  @override
  int compareTo(store other) {
    return other.stamp - stamp;
  }
}
