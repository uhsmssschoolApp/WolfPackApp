import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/appbar.dart';
import 'package:testflutter/constants/consts.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  bool dndState = false;
  List<bool> preferencesState = <bool>[
    true,
  ];
  @override
  Widget build(BuildContext context) {
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
                "Do Not Disturb",
                style: cardTitle,
              ),
              subtitle: Text(
                "No notifications will be pushed!",
                style: cardSubTitle,
              ),
              trailing: CupertinoSwitch(
                  value: dndState,
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      dndState = val;
                      if (val) {
                        
                      }
                    });
                    print(val);
                  }),
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
                  value: preferencesState[0],
                  activeColor: maroon,
                  onChanged: (bool val) {
                    setState(() {
                      preferencesState[0] = val;
                    });
                    print(val);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
