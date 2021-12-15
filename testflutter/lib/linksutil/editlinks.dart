import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constructors/appbar.dart';

List<Widget> myLinks = List.empty();

class EditLinks extends StatelessWidget {
  const EditLinks({Key? key}) : super(key: key);

  // TEMP SOLUTION: CREATE A LIST THAT DOESNT PERSIST
  // see dismissable: https://api.flutter.dev/flutter/widgets/Dismissible-class.html (FOR LINKS TO DELETE)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Edit Links", true),
      body: SingleChildScrollView(
        child: Column(
          // refer to docs: https://docs.flutter.dev/cookbook/persistence/reading-writing-files
          // store the links to persist data
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: myLinks.length,
                itemBuilder: (context, index) {
                  return myLinks[index];
                }),
            Container(
              margin: usualMargin,
              child: Text("hi"),
            )
          ],
        ),
      ),
    );
  }
}
