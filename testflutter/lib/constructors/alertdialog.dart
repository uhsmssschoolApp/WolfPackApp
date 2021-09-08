import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:testflutter/pages/links.dart';

Future<void> showAlert(BuildContext context, String message) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Linkify(
            text: message,
            onOpen: (link) => launchURL(link.url),
            linkStyle: TextStyle(fontFamily: "SF"),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "OK",
                  style: TextStyle(color: Color(0xFFf04c41)),
                ))
          ],
        );
      });
}
