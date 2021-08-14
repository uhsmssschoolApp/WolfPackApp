//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//morning and club announcements
List<String> displayAnnouncementList = [];
List<String> displayDateList = [];
List<String> displayClubAnnouncementList = [];
List<int> displayTimeStampList = [];
List<store> masterList = [];

//USAC stream announcements
List<String> streamBody = [];
List<String> streamTitle = [];
List<int> streamTimeStamp = [];
List<streamStore> masterStreamList = [];

//morning and club announcements
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
}

//SAC STREAM
Future<void> fillStream() async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('sacStream').get();

  for (var doc in querySnapshot.docs) {
    streamBody.add(doc["body"]);
    streamTitle.add(doc["title"]);
    streamTimeStamp.add(doc["timeStamp"]);
  }

  for (int x = 0; x < streamBody.length; x++) {
    streamStore newThing = streamStore(
      stamp: streamTimeStamp[x],
      body: streamBody[x],
      title: streamTitle[x],
    );
    masterStreamList.add(newThing);
  }
  masterStreamList.sort();
}

//morning and club object
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

//sac stream object
class streamStore implements Comparable<store> {
  late int stamp;
  late String body;
  late String title;

  streamStore({
    this.stamp = 0,
    this.body = "body",
    this.title = "title",
  });

  @override
  int compareTo(store other) {
    return other.stamp - stamp;
  }
}

Future<void> refreshData() async {
  await fillList();
  await fillStream();
}
