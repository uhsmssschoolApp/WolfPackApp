import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:testflutter/clubutils/clubannouncements.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/pages/home.dart';
import 'package:testflutter/pages/links.dart';

class ClubViewMore extends StatelessWidget {
  const ClubViewMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Club Annoucements", true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(16),
              child: Text(
                announcementDate,
                style: const TextStyle(fontFamily: "SFBold", fontSize: 18),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Linkify(
                  text: curClubAnnounce,
                  onOpen: (link) => launchURL(link.url),
                  style: const TextStyle(fontFamily: "SF"),
                ))
          ],
        ),
      ),
    );
  }
}
