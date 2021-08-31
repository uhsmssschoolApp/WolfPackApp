import 'package:flutter/material.dart';
import 'package:testflutter/constructors/appbar.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets textMargin = const EdgeInsets.only(top: 16, left: 16, right: 16);
    return Scaffold(
      appBar: mainAppBar("FAQ"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "How was this app created?",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "This app was coded in Dart using the Flutter development kit. Visit Flutter’s official website to learn more about the framework.",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "Will any of my data be stored? What is the privacy policy?",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              // LINK THE PRIVACY POLICY LATERR
              child: const Text(
                "No, this app doesn’t store any personal data or metrics. It will only store your local preferences such as notifications on/off.\n\nThe privacy policy can be found here: link to website.",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "I’m having trouble with the app and I have questions! Help!",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              // ADD CONTACT INFORMATION
              child: const Text(
                "Oh no! You’re in the right place. Contact either Sarina or Dorian and we would be happy to help out with any issues and answer any questions. [insert contact]",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "I want to get involved! How can I join this project?",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "You can reach out to USAC and express your interest! ",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "I have a cool idea for a new feature!",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "Awesome. Use the feedback form built into our app to add a suggestion. We’ll try our best to accommodate your requests!",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "I see a bug! Can you get this fixed?",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "Screenshot/record the problem and send it through the bug fixes google form in feedback. We’ll get right on it!",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "Is my phone supported?",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "The target software for this app is iOS 10.0, so any phone running iOS 10.0 or higher should be optimized. iOS 9 or lower may experience lag or incompatibility issues.\n\nThe targeted android version is Android 11. However, the minimum version is Android 4.0. Note that you may see performance issues if you are running on an older android release or device. ",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: textMargin,
              child: const Text(
                "Are there any IAPs (in app purchases)?",
                style: TextStyle(fontFamily: "SFBold", fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(16),
              child: const Text(
                "Nope. Everything is free to use!",
                style: TextStyle(fontFamily: "SF"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
