import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/constructors/appbar.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testflutter/userprefs.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

bool announcementsBool = true;
bool clubAnnouncementsBool = true;
bool usacAnnouncements = true;
bool adminUpdates = true;
bool weatherUpdates = true;
bool appUpdates = true;

class _notificationsState extends State<notifications> {
  void init() async {
    announcementsBool = await UserPrefs.getPrefs();
    // savebool();
    // loaddata();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      appBar: mainAppBar("Notifications"),
      body: Column(
        children: [
          Container(
            height: 70,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 16),
            child: Text(
              "Preferences",
              style: subTitle,
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Announcements",
                style: cardTitle,
              ),
              subtitle: Text(
                "Daily announcements and updates",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: announcementsBool,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      announcementsBool = val;
                      UserPrefs.setPref(val);
                    });
                    // print(val);
                  }),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Club Announcements",
                style: cardTitle,
              ),
              subtitle: Text(
                "Announcements specific to clubs",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: clubAnnouncementsBool,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      clubAnnouncementsBool = val;
                      // savebool();
                    });
                    // print(val);
                  }),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "USAC Announcements",
                style: cardTitle,
              ),
              subtitle: Text(
                "Messages from student council",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: usacAnnouncements,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      usacAnnouncements = val;
                    });
                    // print(val);
                  }),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Weather Updates",
                style: cardTitle,
              ),
              subtitle: Text(
                "Inclement weather updates and forecasted weather conditions",
                style: cardSubTitle,
              ),
              isThreeLine: true,
              trailing: CupertinoSwitch(
                  value: weatherUpdates,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      weatherUpdates = val;
                    });
                    // print(val);
                  }),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "App Updates",
                style: cardTitle,
              ),
              subtitle: Text(
                "Brief messages regarding updates on the app",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: appUpdates,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      appUpdates = val;
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // Future<void> savebool() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool("announcementsBool", announcementsBool);
  // }

  // Future<void> loaddata() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool("announcementsBool", announcementsBool);
  //   announcementsBool = prefs.getBool("announcementsBool")!;
  //   setState(() {});
  // }
}
