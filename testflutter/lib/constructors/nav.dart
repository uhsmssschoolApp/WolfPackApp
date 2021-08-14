import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constants/icons.dart';
import 'package:testflutter/firestore.dart';
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
  final List<String> _widgetOptions = <String>[
    "/home",
    "/links",
    "/student",
    "/clubs",
    "/more",
  ];

  void _ontap(int index) {
    // if (_selectedInd == 0 && _selectedInd == index) {
    //   refreshData();
    // } else {
      _selectedInd = index;
      Navigator.pushNamed(context, _widgetOptions[index]);
    // }
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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
          label: "More",
        ),
      ],
      onTap: _ontap,
      currentIndex: prev(),
      selectedItemColor: maroon,
    );
  }
}
