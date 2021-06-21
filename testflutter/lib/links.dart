import 'package:flutter/material.dart';

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

class _linksState extends State<links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFFb3b3b3),
          title: Text("Links"),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}
