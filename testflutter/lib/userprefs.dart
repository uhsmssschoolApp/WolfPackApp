import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefs {
  // static Future init() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  // }
  static Future setPref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("announcementsPref", value);
  }

  static Future<bool> getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool ans = prefs.getBool("announcementsPref")!;
    if (ans == null) {
      print("sucker");
    }
    return ans;
  }
}
