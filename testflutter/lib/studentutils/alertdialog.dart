import 'package:flutter/material.dart';

Future<void> showAlert(BuildContext context, String message) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(message),
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
