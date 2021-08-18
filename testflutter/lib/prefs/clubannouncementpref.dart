// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClubAnnouncementPref {
  static Future setPref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("clubannouncementPref", value);
  }

  static Future<bool> getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("clubannouncementPref") == null) {
      prefs.setBool("clubannouncementPref", true);
    }
    bool ans = prefs.getBool("clubannouncementPref")!;
    return ans;
  }
}
