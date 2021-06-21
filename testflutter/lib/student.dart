import 'package:flutter/material.dart';

class student extends StatefulWidget {
  const student({ Key? key }) : super(key: key);

  @override
  _studentState createState() => _studentState();
}

class _studentState extends State<student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFFb3b3b3),
          title: Text("Student"),
          centerTitle: true,
        ),
      ),
    );
  }
}