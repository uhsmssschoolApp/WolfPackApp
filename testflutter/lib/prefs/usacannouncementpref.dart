import 'package:shared_preferences/shared_preferences.dart';

class UsacAnnouncementPref {
  static Future setPref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("usacannouncementPref", value);
  }

  static Future<bool> getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("usacannouncementPref") == null) {
      prefs.setBool("usacannouncementPref", true);
    }
    bool ans = prefs.getBool("usacannouncementPref")!;
    return ans;
  }
}
