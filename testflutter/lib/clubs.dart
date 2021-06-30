import 'package:flutter/material.dart';
import 'package:testflutter/nav.dart';

class clubs extends StatelessWidget {
  const clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFFb3b3b3),
          title: Text("Clubs"),
          centerTitle: true,
        ),
      ),
    );
  }
}
