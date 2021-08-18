import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  static Future setPref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("appPref", value);
  }

  static Future<bool> getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   if (prefs.getBool("appPref") == null) {
      prefs.setBool("appPref", true);
    }
    bool ans = prefs.getBool("appPref")!;
    return ans;
  }
}
