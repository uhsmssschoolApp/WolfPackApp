import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constructors/appbar.dart';

// List<Widget> myLinks = List.empty();
List<String> myLinks = ["hi", "yo", "no"];

class EditLinks extends StatefulWidget {
  const EditLinks({Key? key}) : super(key: key);

  @override
  State<EditLinks> createState() => _EditLinksState();
}

class _EditLinksState extends State<EditLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Edit Links", true),
      body: SingleChildScrollView(
        child: Column(
          // refer to docs: https://docs.flutter.dev/cookbook/persistence/reading-writing-files
          // store the links to persist data
          children: [
            Container(
              margin: usualMargin,
              child: const ListTile(
                title: Text(
                  "My Custom Links",
                  style: TextStyle(
                    fontFamily: "SFBold",
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            Card(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: myLinks.length,
                  itemBuilder: (context, index) {
                    final item = myLinks[index];
                    return Dismissible(
                        key: Key(item),
                        background: Container(color: maroon),
                        onDismissed: (direction) {
                          // Remove the item from the data source.

                          // Then show a snackbar.
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('link deleted!')));
                        },
                        child: ListTile(
                          title: Text(item),
                        ));
                  }),
            ),
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
