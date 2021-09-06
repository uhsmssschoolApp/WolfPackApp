import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constants/icons.dart';

class Nav extends StatefulWidget {
  // const Nav({ Key? key }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<String> _widgetOptions = <String>[
    "/home",
    "/links",
    "/student",
    "/clubs",
    "/more",
  ];

  void _ontap(int index) {
    if (index != prev()) {
      Navigator.pushReplacementNamed(context, _widgetOptions[index]);
    }
    // Navigator.pushReplacementNamed(context, _widgetOptions[index]);
    // Navigator.pushNamedAndRemoveUntil(
    //     context, _widgetOptions[index], (route) => false);
  }

  int prev() {
    if (ModalRoute.of(context) != null) {
      RouteSettings? rs = ModalRoute.of(context)!.settings;
      if (rs.name == null) {
        // print("caught");
        return 0;
      }
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
