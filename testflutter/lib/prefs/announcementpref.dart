import 'package:shared_preferences/shared_preferences.dart';

class AnnouncementPref {
  static Future setPref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("announcementsPref", value);
  }

  static Future<bool> getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("announcementsPref") == null) {
      prefs.setBool("announcementsPref", true);
    }
    bool ans = prefs.getBool("announcementsPref")!;
    return ans;
  }
}
