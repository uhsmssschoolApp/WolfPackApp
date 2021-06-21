import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFFb3b3b3),
          title: Text("Home"),
          centerTitle: true,
        ),
      ),
    );
  }
}