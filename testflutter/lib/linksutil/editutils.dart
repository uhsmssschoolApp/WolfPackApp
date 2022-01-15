import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

List<String> linksList = List.empty(growable: true);

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/links.txt');
}

Future<void> writeToFile(String url) async {
  final file = await _localFile;
  String curString = await file.readAsString();
  file.writeAsString(curString + url +"|");
  return;
}

Future<String> readFile() async {
  try {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return "";
  }
}

Future<void> resetFile() async {
  final file = await _localFile;
  file.writeAsString("");
}

Future<void> parseContents() async {
  String fileContents = await readFile();
  String linkName = "";
  for (int i = 0; i < fileContents.length; i++) {
    if (fileContents[i] == '|') {
      linksList.add(linkName);
      linkName = "";
    } else {
      linkName += fileContents[i];
    }
  }
}

void printList() {
  // for (String i in linksList) {

  // } 
  for(int i = 0; i < linksList.length; i++){
    print(linksList[i]);
  }
}

