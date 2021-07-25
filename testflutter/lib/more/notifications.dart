import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

// note to self : broken please fix
class _notificationsState extends State<notifications> {
  // List<bool> preferencesState = <bool>[
  //   true,
  //   true,
  //   true,
  //   true,
  //   true,
  //   true,
  //   true,
  // ];
  bool announcementsBool = true;
  bool auUpdates = true;
  bool stemUpdates = true;
  bool usacAnnouncements = true;
  bool adminUpdates = true;
  bool weatherUpdates = true;
  bool appUpdates = true;

  Future<bool?> getNotifPrefs(String condition) async {
    final prefs = await SharedPreferences.getInstance();
    final listPrefs = prefs.getBool(condition);
    if (listPrefs == null) {
      print("lmao");
      return false;
    }
    print("yay");
    return listPrefs;
  }

  @override
  Widget build(BuildContext context) {
    getNotifPrefs("announcementsBool");
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
                    });
                    // print(val);
                  }),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "AU Updates",
                style: cardTitle,
              ),
              subtitle: Text(
                "Latest news for Arts Unionville",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: auUpdates,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      auUpdates = val;
                    });
                    // print(val);
                  }),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "STEM Updates",
                style: cardTitle,
              ),
              subtitle: Text(
                "Latest news for Unionville STEM",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: stemUpdates,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      stemUpdates = val;
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
          // Card(
          //   child: ListTile(
          //     title: Text(
          //       "Admin and Office Updates",
          //       style: cardTitle,
          //     ),
          //     subtitle: Text(
          //       "Messages from school admin and staff",
          //       style: cardSubTitle,
          //     ),
          //     trailing: CupertinoSwitch(
          //         value: adminUpdates,
          //         activeColor: maroon,
          //         onChanged: (bool val) {
          //           setState(() {
          //             adminUpdates = val;
          //           });
          //           // print(val);
          //         }),
          //   ),
          // ),
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
                    // print(val);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
