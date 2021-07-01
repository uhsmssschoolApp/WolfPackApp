import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constants/icons.dart';
// import 'package:testflutter/links.dart';
// import 'package:testflutter/home.dart';
// import 'package:testflutter/student.dart';
// import 'package:testflutter/clubs.dart';
// import 'package:testflutter/settings.dart';

class Nav extends StatefulWidget {
  // const Nav({ Key? key }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedInd = 1;
  int initInd = 0;
  List<String> _widgetOptions = <String>[
    "/home",
    "/links",
    "/student",
    "/clubs",
    "/settings",
  ];

  void _ontap(int index) {
    // setState(() {
    //   _selectedInd = index;
    // });
    _selectedInd = index;
    Navigator.pushNamed(context, _widgetOptions[index]);
  }

  int prev() {
    if (ModalRoute.of(context) != null) {
      RouteSettings? rs = ModalRoute.of(context)!.settings;
      for (int i = 0; i < 5; i++) {
        if (rs.name!.contains(_widgetOptions[i])) {
          return i;
        }
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return
        // body: Center(
        //   child: _widgetOptions.elementAt(_selectedInd),
        // ),
        BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // change accent colour?
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.globe),
          label: "Links",
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.people),
          label: "Student",
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.contacts),
          label: "Clubs",
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.more_horiz),
          label: "Settings",
        ),
      ],
      onTap: _ontap,
      currentIndex: prev(),
      selectedItemColor: maroon,
    );
  }
}
