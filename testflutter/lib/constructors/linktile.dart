import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';
import 'package:testflutter/pages/links.dart';

Widget linkTile(Icon trailingIcon, String name, String url) {
  return ListTile(
    leading: trailingIcon,
    title: Text(
      name,
      style: linkTiles,
    ),
    trailing: arrowRight,
    onTap: () {
      launchURL(url);
    },
  );
}
