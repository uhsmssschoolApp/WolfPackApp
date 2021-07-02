import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget expandTile(BuildContext context) {
  return ExpansionTile(
    childrenPadding: const EdgeInsets.all(10),
    title: Text(
      "test",
      style: TextStyle(
        fontFamily: "SFBold",
        fontSize: 20,
      ),
    ),
    // children: [
    //   Column(
    //     expa
    //   )
    // ],
  );
}
