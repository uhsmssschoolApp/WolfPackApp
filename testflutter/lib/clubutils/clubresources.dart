import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/links.dart';

class ClubResources extends StatefulWidget {
  const ClubResources({Key? key}) : super(key: key);

  @override
  _ClubResourcesState createState() => _ClubResourcesState();
}

class _ClubResourcesState extends State<ClubResources> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screenWidth * 0.90,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: homeCorners,
            ),
            elevation: 5,
            child: ListTile(
              onTap: () {
                launchURL(
                    "https://drive.google.com/file/d/1pkSV9MoeuK4NpXHPJHbiOWiKJSiCDozV/view?usp=sharing");
              },
              leading: Container(
                height: 60,
                width: 35,
                alignment: Alignment.center,
                child: Icon(
                  Icons.bookmark_border_rounded,
                  size: 30,
                  color: maroon,
                ),
              ),
              trailing: arrowRight,
              isThreeLine: true,
              title: Text(
                "Club Resources",
                style: linkTiles,
              ),
              subtitle: const Text(
                "Startup, FAQ, Teacher Advisors and More!",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          width: screenWidth * 0.90,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: homeCorners,
            ),
            elevation: 5,
            child: ListTile(
              onTap: () {
                launchURL(
                    "https://docs.google.com/presentation/d/1ancN0wa7SNNb6gozzV5eZJ8Idei7wXz1/edit?usp=sharing&ouid=101102019988373514505&rtpof=true&sd=true");
              },
              leading: Container(
                height: 35,
                width: 35,
                alignment: Alignment.center,
                child: Icon(
                  Icons.dashboard_outlined,
                  size: 30,
                  color: maroon,
                ),
              ),
              trailing: arrowRight,
              title: Text(
                "Club List",
                style: linkTiles,
              ),
              subtitle: const Text(
                "List of all active clubs at UHS",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
