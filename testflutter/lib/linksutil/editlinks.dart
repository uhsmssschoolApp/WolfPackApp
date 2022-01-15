// import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/constructors/appbar.dart';

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testflutter/linksutil/editutils.dart';
import 'package:testflutter/pages/links.dart';

final linkText = TextEditingController();

// List<Widget> myLinks = List.empty();

class EditLinks extends StatefulWidget {
  const EditLinks({Key? key}) : super(key: key);

  @override
  State<EditLinks> createState() => _EditLinksState();
}

class _EditLinksState extends State<EditLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.white,
                child: Center(
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: usualMargin,
                        child: TextField(
                          controller: linkText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Add Link',
                            labelStyle: cardTitle,
                          ),
                          // only works in emulator when u press enter
                          onSubmitted: (String value) async {
                            linksList.add(value);
                            setState(() {});
                          },
                        ),
                      ),
                      ElevatedButton(
                        
                        onPressed: () {
                          linksList.add(linkText.text);
                          setState(() {});
                        },
                        child: Text('Save', style: cardSubTitle,),
                      ),

                    ],
                  )
                ),
              );
            },
          );
        },
        tooltip: "Add a link",
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
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
                  itemCount: linksList.length,
                  itemBuilder: (context, index) {
                    final item = linksList[index];
                    return Dismissible(
                        key: Key(item),
                        background: Container(color: maroon),
                        onDismissed: (direction) {
                          print(index);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('link deleted!')));
                        },
                        child: ListTile(
                          title: Text(item),
                          onTap: () {
                            launchURL(linksList[index]);
                          },
                        ));
                  }),
            ),
            Container(
              margin: usualMargin,
              child: Text("hi"),
            ),
            ElevatedButton(onPressed: () {
            }, child: Text(""))
          ],
        ),
      ),
    );
  }
}
