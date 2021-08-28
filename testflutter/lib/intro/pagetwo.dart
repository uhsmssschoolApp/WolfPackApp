import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/intro/secondpart.dart';
import 'package:testflutter/pages/home.dart';
import 'package:testflutter/studentutils/alertdialog.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                "Before we get started...",
                style: TextStyle(
                    fontFamily: "SFBold", fontSize: 20, color: Colors.black),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.center,
                child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      "I am a student, staff or parent of UHS and I agree to the terms and conditions.",
                      style: TextStyle(fontFamily: "SF", color: Colors.black),
                    ),
                    activeColor: maroon,
                    value: isChecked,
                    onChanged: (val) {
                      setState(() {
                        isChecked = val!;
                        // print(isChecked);
                      });
                    })),
            flex: 4,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.bottomLeft,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "View Policy",
                          style: TextStyle(fontFamily: "SFBold", color: maroon),
                        )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.bottomRight,
                      child: OutlinedButton(
                          onPressed: () {
                            if (isChecked) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondIntro()),
                                  (route) => false);
                            } else {
                              showAlert(context,
                                  "Please confirm you are a student, staff or parent before continuing.");
                            }
                          },
                          child: Text(
                            "Next",
                            style:
                                TextStyle(fontFamily: "SFBold", color: maroon),
                          ))),
                ),
              ],
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
