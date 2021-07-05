import 'package:flutter/material.dart';
import 'package:testflutter/nav.dart';
import '../constants/consts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:testflutter/constants/icons.dart';

import '../appbar.dart';

class clubs extends StatelessWidget {
  const clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Clubs"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: <ExpansionPanelList>[
          //   ExpansionPanel(headerBuilder: "headerBuilder", body: text("Open"))
          // ],
        ),
      ),
    );
  }
}
