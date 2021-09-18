//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/homeutils/timecard.dart';

//morning and club announcements
List<String> displayAnnouncementList = [];
List<String> displayDateList = [];
List<String> displayClubAnnouncementList = [];
List<String> displayCurrentRotation = [];
List<int> displayTimeStampList = [];
List<store> masterList = [];
String currentRotation = "";

//USAC stream announcements
List<String> streamBody = [];
List<String> streamTitle = [];
List<int> streamTimeStamp = [];
List<String> streamDate = [];
List<streamStore> masterStreamList = [];

//morning and club announcements
final Stream<QuerySnapshot> dbref =
    FirebaseFirestore.instance.collection('dates').snapshots();

Future<void> fillList() async {
  // gets the collection named "dates" and returns as a snapshot
  final querySnapshot =
      await FirebaseFirestore.instance.collection('dates').get();

  masterList.clear();
  displayAnnouncementList.clear();
  displayClubAnnouncementList.clear();
  displayDateList.clear();
  displayTimeStampList.clear();
  displayCurrentRotation.clear();

  // adds the information in accordance with the name of the field in the snapshot
  for (var doc in querySnapshot.docs) {
    displayAnnouncementList.add(doc["displayAnnouncement"]);
    displayClubAnnouncementList.add(doc["displayClubAnnouncement"]);
    displayDateList.add(doc["displayDate"]);
    displayTimeStampList.add(doc["displayTimeStamp"]);
    displayCurrentRotation.add(doc["displayCurrentRotation"]);
  }

  // stores inside of our object
  for (int x = 0; x < displayAnnouncementList.length; x++) {
    store newThing = store(
      stamp: displayTimeStampList[x],
      displayDate: displayDateList[x],
      announcement: displayAnnouncementList[x],
      clubAnnouncement: displayClubAnnouncementList[x],
      rotation: displayCurrentRotation[x],
    );
    masterList.add(newThing);
  }
  masterList.sort();
  print(masterList.last.rotation);
}

//SAC STREAM
Future<void> fillStream() async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('sacStream').get();

  masterStreamList.clear();
  streamBody.clear();
  streamTitle.clear();
  streamTimeStamp.clear();
  streamDate.clear();

  for (var doc in querySnapshot.docs) {
    streamBody.add(doc["body"]);
    streamTitle.add(doc["title"]);
    streamTimeStamp.add(doc["timeStamp"]);
    streamDate.add(doc["streamDate"]);
  }

  for (int x = 0; x < streamBody.length; x++) {
    streamStore newThing = streamStore(
      stamp: streamTimeStamp[x],
      body: streamBody[x],
      title: streamTitle[x],
      date: streamDate[x],
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
  late String rotation;
  late String clubAnnouncement;

  store({
    this.stamp = 0,
    this.displayDate = "displayDate",
    this.announcement = "announcement",
    this.clubAnnouncement = "clubAnnouncement",
    this.rotation = "rotation",
  });

  @override
  int compareTo(store other) {
    return other.stamp - stamp;
  }
}

//sac stream object
class streamStore implements Comparable<streamStore> {
  late int stamp;
  late String body;
  late String title;
  late String date;

  streamStore({
    this.stamp = 0,
    this.body = "body",
    this.title = "title",
    this.date = "date",
  });

  @override
  int compareTo(streamStore other) {
    return other.stamp - stamp;
  }
}

// called to refresh data, see above functions
Future<void> refreshData() async {
  await fillList();
  await fillStream();
}
