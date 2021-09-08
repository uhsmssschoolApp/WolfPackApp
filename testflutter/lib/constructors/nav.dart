import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constants/icons.dart';
import 'package:testflutter/pages/clubs.dart';
import 'package:testflutter/pages/home.dart';
import 'package:testflutter/pages/links.dart';
import 'package:testflutter/pages/more.dart';
import 'package:testflutter/pages/student.dart';


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

  final List<Widget> _pageOptions = [
    home(),
    links(),
    student(),
    clubs(),
    more(),
  ];

  void _ontap(int index) {
    if (index != prev()) {
      Navigator.pushNamedAndRemoveUntil(
        context, _widgetOptions[index], (route) => false);
        //  Navigator.pushReplacement(
//       context, 
//       PageRouteBuilder(
//         pageBuilder: (context, animation1, animation2) => 
//         _pageOptions[index],
//         transitionDuration: Duration.zero,
//     ),
// );
    }
    // Navigator.pushReplacementNamed(context, _widgetOptions[index]);
    // Navigator.pushNamedAndRemoveUntil(
    //     context, _widgetOptions[index], (route) => false);
  }

  int prev() {
    // print(ModalRoute.of(context));
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
