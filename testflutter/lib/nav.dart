import 'package:flutter/material.dart';
import 'package:testflutter/icons.dart';
// import 'package:testflutter/links.dart';

class Nav extends StatefulWidget {
  // const Nav({ Key? key }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedInd = 0;
  List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: [
        
      ],
    ),
    links(),
    Text("studet"),
    Text("clubs"),
    Text("settings"),
  ];

  void _ontap(int index) {
    setState(() {
      _selectedInd = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedInd),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            label: "Settings",
          ),
        ],
        currentIndex: _selectedInd,
        onTap: _ontap,
      ),
    );
  }
}

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

class _linksState extends State<links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Links"),
      ),
    );
  }
}
